import requests
response = requests.get(
            "https://www.eventbriteapi.com/v3/series/47615979677",
                headers = {
                            "Authorization": "Bearer XZJ5OCCSCTM3XJL5RNMW",
                                },
                    verify = True,  # Verify SSL certificate
                    )
print(response.json());
