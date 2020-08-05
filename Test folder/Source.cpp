#include <iostream>
#include <fstream>
#include <string>
using namespace std;

int main()
{
	string instruction;
	ifstream input_file;
	ofstream output_file;
	input_file.open("tst_hex.txt");
	output_file.open("test_file_2.txt");
	while (!input_file.eof())
	{
		input_file >> instruction;
		if (instruction.length() == 8)
		{
			output_file << instruction[6] << instruction[7] << endl << instruction[4] << instruction[5] << endl << instruction[2] << instruction[3] << endl << instruction[0] << instruction[1] << endl;
		}
		else if (instruction.length() == 4)
		{
			output_file << instruction[2] << instruction[3] << endl << instruction[0] << instruction[1] << endl;
		}
		output_file << endl;
	}

	output_file.close();
	return 0;
}