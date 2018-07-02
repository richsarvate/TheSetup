import requests
import json

f = open("description.html","r")
desc = f.read()

r = requests.post("https://www.eventbriteapi.com/v3/series/47615979677", 
    data = {"series_parent.description.html":desc},
    headers = {"Authorization": "Bearer XZJ5OCCSCTM3XJL5RNMW",},
    verify = True,
    )

json_data = json.loads(r.text)
print(r.json());
