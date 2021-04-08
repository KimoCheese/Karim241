#include "file_lib.h"
#include <stdio.h>
#include <stdlib.h>


size_t load_file(char* path, char** contents){
	FILE *f = fopen(path, "rb");
	char line[20];
	while (fgets (line, sizeof (line)/sizeof (line[0]) ,f ) ){
		printf ("%c\n", *line);
	}
	return 1;
}
size_t save_file(char* path, char* contents, size_t size){
	return 1;
}
