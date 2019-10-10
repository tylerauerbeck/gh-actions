#import required libraries
import requests
import re
import os

API_ENDPOINT = "https://dev.to/api/articles"

PR = os.getenv('PR_LIST_FILE')
API_KEY = os.getenv('DEV_TO_TOKEN')

with open(PR, 'r') as files:
    for line in files.readlines():
        if re.search("^.*.md$", line):
            with open(line.strip(),'r') as file:
                data = file.read().replace('\n', '\\n')
                json = '{"article":{"body_markdown": "' + data + '"}}'
                print(json)
            headers = {'content-type': 'application/json', 'api-key': API_KEY}
            r = requests.post(url = API_ENDPOINT, data = json, headers = headers)
            print(r)
