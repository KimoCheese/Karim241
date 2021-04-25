#include <stdio.h>
#include <stdlib.h>
#include "file_lib.c"
#include "sorter.c"
/*
 * Read the file from the command-line.
 * Usage:
 * ./a.out FILE_TO_READ FILE_TO_WRITE
 *
 */
int main(int argc, char** argv){
	
	char* contents;

	// We are indicating number of lines & bytes read.
	size_t numBytes = 0;
	int numLines = 0;

	// Read the original file in contents and returning number of bytes.
	numBytes = load_file(argv[1], &contents); 
	printf("%lu number of bytes read from the file.\n", numBytes);

	// Calculating the number of lines within the file.
	for (int i=0; i < numBytes; i++){
		if(contents[i]=='\n'){
			++numLines;
		}
	}

	// Sort the file with the function you wrote.
	sort(&contents, numLines);

	// Write out the new file.
	save_file(argv[2], contents, numBytes);

}


// You can see if your file worked correctly by using the
// command:
//
// diff ORIGINAL_FILE NEW_FILE
//
// If the command returns ANYTHING the files are different.
