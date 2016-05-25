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
			if (key == "precondition") { cppstatement = "if (" + value + ") then";
			} else if (key == "beforeloop") { cppstatement = value;
			} else if (key == "beforeloopinit") { cppstatement = value;
			} else if (key == "symbolic") { 
				if (value.compare("") != 0) 
					cppstatement = value;
				else 
					cppstatement = "";
			} else if (key == "loopcondition") { 
				if (value.compare("") == 0) {
					//nondet=true;
					//cppstatement += "\twhile (nondet>0) do";
					cppstatement = "\twhile (brandom) do";
				}
				else
					cppstatement = "\twhile (" + value + ") do";
			} else if (key == "loop") { 
				cppstatement = "\t\t" + value;
				/*if (nondet == true) {
					cppstatement += "\n\t\tnondet = random;";
				}*/
				cppstatement += "\n\t\tdone;";
				//}
			} else if (key == "postcondition") { 
				cppstatement = "//" + value + "\n"; 
				//if (nondet == true)
				//cppstatement += "\n\t\tdone;";
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
			if (vnum >= 0) {
				cppFile <<"var\t" << variables[0] << ":int";
				for (int i = 1; i < vnum; i++) {
					cppFile << ", " << variables[i] << ":int";
				}
				/*if (nondet == true)
					cppFile << ", nondet:int";
					*/
				cppFile << ";\n\n";
			}
			cppFile << "begin\n";
			/*
			if (nondet == true)
				cppFile << "\tnondet = random;\n";
				*/
			for (int i = 0; i < confignum; i++) {
				/*if (cs[i].key == "loop") { 
					cppFile << "\t\t" << cs[i].cppstatement;
					if (nondet) {
						cppFile << "\t\tnondet = random;\n";
						continue;
					}
				}*/
				if (cs[i].cppstatement.compare("") != 0)
					cppFile << "\t" << cs[i].cppstatement << endl;
			}
			cppFile << "\tendif;\n";
			cppFile << "end\n";
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
	cppfilename[strlen(cppfilename)-3] = 't';
	cppfilename[strlen(cppfilename)-2] = 'x';
	cppfilename[strlen(cppfilename)-1] = 't';
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
