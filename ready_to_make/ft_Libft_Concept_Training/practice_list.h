#ifndef PRACTICE_LIST_H
# define PRACTICE_LIST_H
# include <stdlib.h>
# include <stddef.h>
typedef struct s_list
{
    int value;
    struct s_list *next;
} t_list;
#endif
