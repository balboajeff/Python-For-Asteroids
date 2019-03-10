import urllib.request
import json
contents = urllib.request.urlopen("https://api.nasa.gov/neo/rest/v1/neo/3802394?api_key=DEMO_KEY").read()
varab = json.loads(contents.decode('utf-8'))
print(varab.keys())
print('*' * 79)
print(('object 3802394 is: ')+varab['close_approach_data'][0]['miss_distance']['miles']+(" miles away!!!"))
print('*' * 79)


