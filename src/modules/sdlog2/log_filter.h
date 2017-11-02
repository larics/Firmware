#include <c_hashmap/hashmap.h>


#ifndef __LOG_FILTER_H
#define __LOG_FILTER_H


/** 
 * Buffer line size used by the text parser.
 */
#define LINE_SIZE 1000

/**
 * HashMap constants 
 */
#define KEY_MAX_LENGTH (64)
#define KEY_PREFIX ("somekey")
#define KEY_COUNT (32)

/**
 * Path to the log configuration file.
 */
#define PATH_TO_FILE "/fs/microsd/log/sdlog2_config.txt"

/**
 * Initializes the topic map from the xml
 */
extern int initialize_topic_map(void);
extern map_t topic_map;

/**
 * Single map entry.
 */
typedef struct data_struct_s
{
    char key_string[KEY_MAX_LENGTH];
    int enabled;
} data_struct_t;

int
parse_xml(char *buff, size_t buff_size);

#endif


