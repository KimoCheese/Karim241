#include "file_lib.h"
#include "sorter.h"
#include <stdio.h>
#include <stdlib.h>
	
/*
 * Read the file from the command-line.
 * Usage:
 * ./a.out FILE_TO_READ FILE_TO_WRITE
 *
 */

int main(int argc, char** argv){
	// Read the original file.
	char** file_contents;
	load_file("out_of_order_file", file_contents);

	// Sort the file with the function you wrote.
	

	// Write out the new file.
	

}
// You can see if your file worked correctly by using the
// command:
//
// diff ORIGINAL_FILE NEW_FILE
//
// If the command returns ANYTHING the files are different.
