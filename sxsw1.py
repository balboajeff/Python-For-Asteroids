import urllib.request
contents = urllib.request.urlopen("https://api.nasa.gov/neo/rest/v1/neo/3542519?api_key=DEMO_KEY").read()
print(contents)
