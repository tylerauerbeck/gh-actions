#import required libraries
import requests
import re

API_ENDPOINT = "https://dev.to/api/articles"

with open("$PR_LIST_FILE", 'r') as files:
    for line in files.readlines():
        if re.search("^.*.md$", line):
            with open(line.strip(),'r') as file:
                data = file.read().replace('\n', '\\n')
                json = '{"article":{"body_markdown": "' + data + '"}}'
                print(json)
            headers = {'content-type': 'application/json', 'api-key': $DEV_TO_TOKEN}
            #r = requests.post(url = API_ENDPOINT, data = json, headers = headers)
            #print(r)
