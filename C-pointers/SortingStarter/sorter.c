#include "sorter.h"
#include <stdio.h>
#include <string.h>
void fill_array_with_file_contents(char *contents, char **strArr);
char** build_array_to_sort();
int row_size = 25 * sizeof(char);
int num_rows = 102401;
void sort(char *contents, int size)
{
    char **arr = build_array_to_sort();
    fill_array_with_file_contents(contents, arr);
}

char** build_array_to_sort()
{
    char **arr = (char **)malloc(num_rows * sizeof(char *));
    for (int i = 0; i < num_rows; i++)
        arr[i] = (char *)malloc(row_size);

    return arr;
}

void fill_array_with_file_contents(char *contents, char **strArr)
{
//grabs the top string from the file contents and puts it in the token variable
    char *token;
    token = strtok(contents, "\n");
//loop throught every single line in the context and add to the array
void sort(char **array, int filelinecount)
{
    int i, j;
    char t[num_rows];

    for(i=1;i<row_size;i++)
    {
        for(j=1;j<row_size;j++)
        {
            if(strcmp(array[j-1], array[j]) > 0)
            {
                strcpy(t, array[j-1]);
                t[LINE_MAX_SIZE] = 0;
                strcpy(array[j-1], array[j]);
                strcpy(array[j], t);
            }
        }
    }
}
// gets the next token and loops again
    int i = 0;
    while (token != NULL)
    {
        strArr[i] = token;
        printf("Arr: %s\n", strArr[i]);
        token = strtok(NULL, "\n");
    }
}

