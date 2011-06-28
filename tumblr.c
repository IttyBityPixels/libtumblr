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

int text(char *type, char *email, char *password, char *title, char *body, int id)
{
	CURL *curl;
	CURLcode res;

	curl = curl_easy_init();

	if (curl)
	{
		//curl_easy_setopt(curl, CURLOPT_URL, 
	}
}
