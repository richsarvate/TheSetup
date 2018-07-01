import requests
import json

response = requests.get(
            "https://www.eventbriteapi.com/v3/series/47615979677",
                headers = {
                            "Authorization": "Bearer XZJ5OCCSCTM3XJL5RNMW",
                                },
                    verify = True,  # Verify SSL certificate
                    )

json_data = json.loads(response.text)


print(json_data['description']['html']);
