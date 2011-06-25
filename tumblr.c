#include <stdio.h>
#include <curl/curl.h>

int init_curl()
{
	if (curl_global_init(CURL_GLOBAL_ALL) != 0)
		return -1;

	return 0;
}

void cleanup_curl()
{
	curl_global_cleanup();
}
