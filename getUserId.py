from eb import Eventbrite
eb = Eventbrite('XZJ5OCCSCTM3XJL5RNMW')
user = eb.get_user()  # Not passing an argument returns yourself
user['id']
