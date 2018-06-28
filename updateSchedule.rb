def print_comedian(name)

  return '<li class=\"comedian-tile\"><div class=\"headshot\"><img alt=\"'+name+'\" src=\"https://s3-us-west-1.amazonaws.com/comedyoakland/headshots/'+name.gsub(/\s+/, "")+'.jpg\" /><\/div><div><h1 class=\"comic-name\">'+name+'<\/h1><\/div><\/li>'

end

def print_ticket_button()

  return '<div class=\"eventbrite\"><a href=\"https://thesetupsf.eventbrite.com"><img alt=\"Buy Tickets on Eventbrite\" src=\"https://s3-us-west-1.amazonaws.com/comedyoakland/images/eventbrite-buy-button.jpg\" /><\/a><\/div><div class=\"minimum\">NOTE: There is a 1-item minimum per person<\/div>'

end

def print_drink_min()

	return '<div class=\"minimum\">NOTE: There is a 1-item minimum per person<\/div>'

end

def print_show()

	return '<div class=\"show-wrapper\"><div class=\"show-heading-wrapper\"><h1 class=\"show-heading\"> Thursday, April 30, 8:00 PM<\/h1><\/div><div class=\"show-body\"><ul class=\"lineup\">'+
        print_comedian("Richard Sarvate")+
        print_comedian("Ryan Goodcase")+
        print_comedian("Red Scott")+
        print_comedian("Ben Feldman")+
        print_comedian("Samson Koletkar")+
        '<\/ul>'
        +print_ticket_button()+
        +print_drink_min()+
        '<div class=\"show-wrapper\"><div class=\"show-heading-wrapper\">'

end

def output_something()
  puts 'document.write('+
	print_show()+	
'<div class=\"show-wrapper\"><div class=\"show-heading-wrapper\">'+
	'<h1 class=\"show-heading\"> Thursday, June 28, 8:00 PM<\/h1><\/div><div class=\"show-body\"><ul class=\"lineup\">'+
	print_comedian("Mean Dave")+
	print_comedian("Richard Sarvate")+
	print_comedian("Red Scott")+
	print_comedian("Shannon Murphy")+
	print_comedian("Ben Feldman")+
	'<\/ul><div class=\"eventbrite\"><a href=\"https://thesetupsf.eventbrite.com"><img alt=\"Buy Tickets on Eventbrite\" src=\"https://s3-us-west-1.amazonaws.com/comedyoakland/images/eventbrite-buy-button.jpg\" /><\/a><\/div><div class=\"minimum\">NOTE: There is a 1-item minimum per person<\/div><div class=\"show-wrapper\"><div class=\"show-heading-wrapper\"><h1 class=\"show-heading\"> Thursday, June 28, 8:00 PM<\/h1><\/div><div class=\"show-body\"><ul class=\"lineup\">'+
	print_comedian("Mean Dave")+
        print_comedian("Richard Sarvate")+
        print_comedian("Red Scott")+
        print_comedian("Shannon Murphy")+
        print_comedian("Ben Feldman")+
'<\/ul><div class=\"eventbrite\"><a href=\"https://www.eventbrite.com/e/comedy-oakland-presents-thu-june-28-2018-tickets-45637808915\"><img alt=\"Buy Tickets on Eventbrite\" src=\"https://s3-us-west-1.amazonaws.com/comedyoakland/images/eventbrite-buy-button.jpg\" /><\/a><\/div><div class=\"minimum\">NOTE: There is a 1-item minimum per person<\/div><div class=\"show-wrapper\"><div class=\"show-heading-wrapper\"><h1 class=\"show-heading\"> Thursday, June 28, 8:00 PM<\/h1><\/div><div class=\"show-body\"><ul class=\"lineup\">'+
	print_comedian("Mean Dave")+
        print_comedian("Richard Sarvate")+
        print_comedian("Red Scott")+
        print_comedian("Shannon Murphy")+
	print_comedian("Ben Feldman")+
'<\/ul><div class=\"eventbrite\"><a href=\"https://www.eventbrite.com/e/comedy-oakland-presents-thu-june-28-2018-tickets-45637808915\"><img alt=\"Buy Tickets on Eventbrite\" src=\"https://s3-us-west-1.amazonaws.com/comedyoakland/images/eventbrite-buy-button.jpg\" /><\/a><\/div><div class=\"minimum\">NOTE: There is a 1-item minimum per person<\/div><div class=\"show-wrapper\"><div class=\"show-heading-wrapper\"><h1 class=\"show-heading\"> Thursday, June 28, 8:00 PM<\/h1><\/div><div class=\"show-body\"><ul class=\"lineup\">'+
	print_comedian("Mean Dave")+
        print_comedian("Richard Sarvate")+
        print_comedian("Red Scott")+
        print_comedian("Shannon Murphy")+
        print_comedian("Ben Feldman")+
'<\/ul><div class=\"eventbrite\"><a href=\"https://www.eventbrite.com/e/comedy-oakland-presents-thu-june-28-2018-tickets-45637808915\"><img alt=\"Buy Tickets on Eventbrite\" src=\"https://s3-us-west-1.amazonaws.com/comedyoakland/images/eventbrite-buy-button.jpg\" /><\/a><\/div><div class=\"minimum\">NOTE: There is a 1-item minimum per person<\/div><style type=\"text/css\">body {\n  font-family: \'Roboto\' !important;\n}\n.comedian-tile {\n  padding: 10px;\n}\n.headshot {\n  width: 150px;\n  height: 150px;\n  overflow: hidden;\n}\n.headshot img {\n  width: 150px;\n}  \nul.lineup li  {\n  display: inline-block;\n  vertical-align: top;\n  font-size: 14px;\n  text-align: center;\n  max-width: 150px;\n  font-family: \'Roboto\' !important;\n  width: 150px;\n}\n.show-wrapper {\n  background-color: lightgrey;\n  -webkit-border-bottom-left-radius: 20px;\n  -webkit-border-bottom-right-radius: 20px;\n  -moz-border-radius-bottomleft: 20px;\n  -moz-border-radius-bottomright: 20px;\n  border-bottom-left-radius: 20px;\n  border-bottom-right-radius: 20px;\n}\n.wsite-section-content .container {\n  background-color: #aaaaaa !important;\n}\n.show-body {\n  padding: 20px;\n}\n.description {\n  margin-bottom: 10px;\n}\n.show-heading-wrapper {\n  background-color: #aaa;\n}\n.show-heading {\n  background-color: #aaaaaa;\n  font-family: \'Roboto\' !important;\n  font-size: 22px;\n  font-weight: bold;\n  padding: 20px;\n  -webkit-border-top-left-radius: 20px;\n  -webkit-border-top-right-radius: 20px;\n  -moz-border-radius-topleft: 20px;\n  -moz-border-radius-topright: 20px;\n  border-top-left-radius: 20px;\n  border-top-right-radius: 20px;\n}\n.details {\n  padding: 20px;\n}\n.price {\n  font-weight: bold;\n  font-size: 18px;\n  margin: 10px 0px 5px 0px;\n}\n.minimum {\n  margin: 10px 0px 25px 0px;\n}\n.faq {\n  margin: 5px 0px\n}\n.faq a {\n  text-decoration: underline;\n}\n.show-type-photo img {\n  max-width: 100%;\n}\nh1.comic-name {\n  font-size: 16px;\n  margin: 5px 0px 5px 0px;\n}\n.eventbrite {\n  padding-top: 20px;\n}\n@media only screen and (max-width: 450px) {\n  ul.lineup li {\n    width: 40%;  \n  }\n  .headshot {\n    width: 130px;\n    height: 130px;\n    overflow: hidden;\n  }\n  .headshot img {\n   width: 130px;\n  }  \n}<\/style>");' 
end

output_something();