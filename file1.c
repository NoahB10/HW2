//file1.c
#include <stdio.h>
#include <stdlib.h>
#include "file1.h"
#include "file2.h"
#include "file3.h"
#include "file4.h"
int file1_function(){
	printf("This is file1_function()\n");
	file2_function();
	file3_function();
	file4_function();
	return 0;
}
