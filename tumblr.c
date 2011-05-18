#include <stdio.h>
#include "curl.h"

int init_curl()
{
	curl_global_init(CURL_GLOBAL_ALL);
}

int cleanup_curl()
{
	curl_global_cleanup();
}
