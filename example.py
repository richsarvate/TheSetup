import requests
import json
import urllib.parse

f = open("description.html","r",encoding="utf-8")
desc = f.read()

parameter = "series_parent.description.html:Test"; 

htmldesc = "{\"series_parent\": {\"description\": {\"html\": \""+desc+"\"}}}"

r = requests.post("https://www.eventbriteapi.com/v3/series/47615979677", 
        data = parameter.encode("utf-8"),
    headers = {"Authorization": "Bearer XZJ5OCCSCTM3XJL5RNMW",},
    verify = True,
    )

json_data = json.loads(r.text)
print(r.json());
