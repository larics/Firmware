#include <stdio.h>
#include <string.h>
#include <assert.h>
#include <stdlib.h>

#include "log_filter.h"

/**
 * Map containing all the saved topics and states.
 */
map_t topic_map;

/**
 * Initializes topic map.
 * Parses the given text file and saves 
 * all keys and values in a single hashmap.
 *
 * @return Negative if initialization is unsuccessful, 0 otherwise.
 */
int initialize_topic_map(void)
{
    topic_map = hashmap_new();

    char buffer[LINE_SIZE];
    int result = parse_xml(buffer, LINE_SIZE);
    
    return result;
}

/*
 * Parse text file and save data to hash map.
 * 
 * @return 0 if parsing is successful, 
 *          -1 if unable to read file,
 *          -2 if unable to add new entry to map.
 */
int
parse_xml(char *buff, size_t buff_size)
{
    FILE *fid;

    fid = fopen(PATH_TO_FILE, "r+");
    if (fid == NULL) {
        return -1;
    }

    char str1[64], str2[64];
    
    // read as many line as you can
    while(fgets(buff, LINE_SIZE, fid)) {
        
        // expected 2 tokens
        if (sscanf(buff, "TOPIC=%s ENABLED=%s", str1, str2) != 2) {
            continue;
        }

        if (strcmp(str2, "true") != 0) {
            continue;
        }

        // Add to map only if true
        data_struct_t* new_value = malloc(sizeof(data_struct_t));
        snprintf(new_value->key_string, KEY_MAX_LENGTH, "%s", str1);
        new_value->enabled = 1;
    
        // Try to put value in the map
        int error = hashmap_put(topic_map, new_value->key_string, new_value); 
        if (error != MAP_OK) {
            PX4_WARN("Unable to add new entry to hashmap - possible memory problem.");
            return -2;
        }

        PX4_INFO("Logging topic: %s", str1);
    }

    fclose(fid);

    return 0;
}
