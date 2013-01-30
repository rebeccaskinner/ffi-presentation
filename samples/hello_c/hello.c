/* GNU99 C Source; compile with gcc -std=gnu99 */
#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>

char* generate_message(const char* name)
{
    char* s = NULL;
    asprintf(&s, "Hello, %s",name);
    return s;
}

int main(int argc, char** argv)
{
    char* s = generate_message("world");
    printf("%s\n",s);
    free(s);
    return EXIT_SUCCESS;
}
