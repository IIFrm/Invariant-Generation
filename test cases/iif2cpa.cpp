#include <sstream>
#include <iostream>
#include <string>
#include <fstream>
#include <vector>
#include <cstring>
using namespace std;

const int max_confignum = 32;
bool nondet=false;

class Config {
	public:
		string key;
		string value;
		string cppstatement;

		friend std::ostream& operator << (std::ostream& out, const Config& c) {
			out << c.key << " = " << c.value;
			return out;
		}

		bool toCppStatement() {
			//cout << "processing <" + key + ", " + value + ">......\n";
			if (key == "precondition") { cppstatement = "\tif(!(" + value + ")) {\n\t\t return 0;\n\t}\n";
			} else if (key == "beforeloop") { 
				if (value.compare("") == 0)
					cppstatement = "";
				else
					cppstatement = value + "\n";
			} else if (key == "beforeloopinit") {
				if (value.compare("") == 0)
					cppstatement = "";
				else
					cppstatement = value + "\n";
			} else if (key == "symbolic") { 
				if (value.compare("") != 0) 
					cppstatement = value;
				else 
					cppstatement = "";
			} else if (key == "loop") { cppstatement = "\t"+ value + "\n";
			} else if (key == "loopcondition") { 
				if (value.compare("") == 0) {
					nondet = true;
					cppstatement = "\twhile(1) {\n";
				} else
					cppstatement = "\twhile(" + value + ") {\n";
			} else if (key == "loop") { cppstatement = "\t\t" + value + "\n";
			} else if (key == "postcondition") { 
				if (nondet) 
					cppstatement = "\t\tif(!(" + value + ")) {\n\t\t\t goto ERROR;\n\t\t}\n\t}\n"; 
				else
					cppstatement = "\t}\n\tif(!(" + value + ")) {\n\t\t goto ERROR;\n\t}\n"; 

				cppstatement += "\treturn 0;\n\n";
				cppstatement += "ERROR: \n\t__assert_fail();\n\treturn 1;\n}";
			}
			return true;
		}
};


class FileHelper {
	public:
		FileHelper(const char* cfgfilename, const char* cppfilename) {
			this->cfgfilename = cfgfilename;
			this->cppfilename = cppfilename;
			cs = new Config[max_confignum];
			int i = 0;
			cs[i++].key = "names";
			cs[i++].key = "beforeloop";
			cs[i++].key = "beforeloopinit";
			cs[i++].key = "symbolic";
			cs[i++].key = "precondition";
			cs[i++].key = "loopcondition";
			cs[i++].key = "loop";
			cs[i++].key = "postcondition";
			cs[i++].key = "afterloop";
			cs[i++].key = "learners";
			confignum = i;
			vnum = 0;
		}

		~FileHelper() {
			if (cs != NULL)
				delete []cs;
			variables.clear();
			learners.clear();
		}

		bool readConfigFile() {
			ifstream cfgFile(cfgfilename);
			if(!cfgFile.is_open()) {
				cout<<"can not open cfg file!"<<endl;
				return false;
			}
			string line;
			int lastidx = -1;
			while(getline(cfgFile, line)) {
				size_t pos = line.find('=');
				string key = line.substr(0,pos);
				bool get_record = false;
				for (int i = 0; i < confignum; i++) {
					if(cs[i].key == key) {
						get_record = true;
						cs[i].value += line.substr(pos+1);
						lastidx = i;
						break;
					}
				}
				if (get_record == true)
					continue;
				else 
					cs[lastidx].value += "\n" + line;
			}
			cfgFile.close();

			size_t start = 0;
			size_t end = cs[0].value.find(' ');
			while (end == start) {
				end = cs[0].value.find(' ', end+1);
				start++;
			}
			for (int i = 0; end != std::string::npos; i++) {
				variables.push_back(cs[0].value.substr(start, end-start));
				start = end + 1;
				end = cs[0].value.find(' ', start);
			}
			if (start != end)
				variables.push_back(cs[0].value.substr(start, end-start));
			vnum = variables.size();

			int index = confignum - 1;
			start = 0;
			end = cs[index].value.find(' ');
			while (end == start) {
				end = cs[index].value.find(' ', end+1);
				start++;
			}
			for (int i = 0; end != std::string::npos; i++) {
				learners.push_back(cs[index].value.substr(start, end-start));
				start = end + 1;
				end = cs[index].value.find(' ', start);
			}
			if (start != end)
				learners.push_back(cs[index].value.substr(start, end-start));

			return true;
		}

		bool writeCppFile() {
			for (int i = 0; i < confignum; i++)
				cs[i].toCppStatement();
			ofstream cppFile(cppfilename);
			if( !cppFile.is_open()) {
				cout<<"can not open cpp file!"<<endl;
				return false;
			}
			writeCppLoopFunction(cppFile);
			//cppFile << endl;
			cppFile.close();
			return true;
		}

		inline int getVnum() {
			return vnum;
		}

	private:
		bool writeCppLoopFunction(ofstream& cppFile) {
			cppFile << "extern void __assert_fail();\n\n";
			cppFile <<"int main() {\n";
			for (int i = 0; i < vnum; i++) {
				cppFile << "\tint " << variables[i] << ";\n";
			}
			cppFile << endl;
			for (int i = 0; i < confignum; i++) {
				cppFile << cs[i].cppstatement;
			}
			return true;
		}

	private:
		const char* cfgfilename;
		const char* cppfilename;
		Config* cs;
		int confignum;
		vector<string> variables;
		vector<string> learners;
		int vnum;
};


int main(int argc, char** argv) 
{
	if (argc < 2) return -1;
	const char* cfgfilename = argv[1];
	char* cppfilename = new char [strlen(cfgfilename)+1];
	strcpy(cppfilename, cfgfilename);
	cppfilename[strlen(cfgfilename)] = '\0';
	cppfilename[strlen(cppfilename)-2] = 'p';
	cppfilename[strlen(cppfilename)-1] = 'p';
	cout << " -------------|" << cfgfilename << " >>>|" << cppfilename << "|\n";

	FileHelper fh(cfgfilename, cppfilename);
	//cout << "after construct...\n";
	fh.readConfigFile();
	//cout << "after read config file...\n";
	fh.writeCppFile();
	//cout << "after write cpp file...\n";
	//fh.writeInvFile();
	return fh.getVnum();
}
