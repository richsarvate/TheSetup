from eventbrite import Eventbrite
eventbrite = Eventbrite('XZJ5OCCSCTM3XJL5RNMW');

user = eventbrite.get_user()  # Not passing an argument returns yourself
print(user['id'])
print(user['name'])
