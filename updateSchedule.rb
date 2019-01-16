def print_comedian(name)

  return '<li class=\"comedian-tile\"><div class=\"headshot\"><img alt=\"'+name+'\" src=\"https://s3-us-west-1.amazonaws.com/comedyoakland/headshots/'+name.gsub(/\s+/, "")+'.jpg\" /><\/div><div><h1 class=\"comic-name\">'+name+'<\/h1><\/div><\/li>'

end

def getDescription(showName)

	description = "Featuring comedians from Comedy Central, HBO, and Late Night, The Setup brings you the best comedy experience in San Francisco"

	case showName
	when "Roast of Harry Potter"
		description = "No one in Hogwarts is safe when we bring some of the funniest comedians in the bay to roast everyone’s favorite wizarding school! We’ll be raffling prizes and drinks throughout the show so come show your House spirit!"
	when "Storytelling Night: A Funny Thing Happened"
		description = "The First Wednesday of every Month, The Setup presents 'A Funny Thing Happened', a night of world class storytelling. You'll be joining bestselling authors, Emmy-Award winning writers, TED speakers, stars of The Moth Radio hour, Snap Judgment and accomplished comedic voices in an intimate setting right in the heart of San Francisco."
	when "The Bitchuation Room"
		description = "Welcome to The Bitchuation Room, a live monthly progressive comedy podcast moderated by journalist and comedian Francesca Fiorentini. Join her and fellow comedian Nato Green as they gather comedians, activists, experts, journalists and politicians to make sense and fun of the month's news. It's like NPR on psychedelics. Or off them."

	end


	return description
end

def print_ticket_button(showName)

	ticketLink = "https://thesetupsf.eventbrite.com"

	case showName
	when "Craft Beer and Comedy"
		ticketLink = "https://thesetupsf.eventbrite.com"
	when "Storytelling Night: A Funny Thing Happened"
		ticketLink = "https://setupstorynight.eventbrite.com"
	when "The Bitchuation Room"
		ticketLink = "https://thebroompodcast.eventbrite.com"
	when "Bad Asians"
		ticketLink = "https://badasians.eventbrite.com"
	when "Don't Tell Secret Show"
		ticketLink = "https://www.donttellcomedy.com/tickets/sfciviccenter"
	when "Roast of Harry Potter"
		ticketLink = "https://www.eventbrite.com/e/the-setup-presents-the-roast-of-harry-potter-tickets-52299849257"
	when "I Think I'd Be Good At That"
		ticketLink = "https://www.eventbrite.com/e/the-setup-presents-i-think-id-be-good-at-that-tickets-50929837515"
	else
		ticketLink = "https://thesetupsf.eventbrite.com"
	end

	return '<div class=\"eventbrite\"><a href=\"'+ticketLink+'\"><img alt=\"Buy Tickets on Eventbrite\" src=\"https://i.imgur.com/0eV8t0o.png\" /><\/a><\/div><div class=\"price\">$15 online / $20 at the door<\/div><div class=\"minimum\">NOTE: There is a ONE ITEM minimum per person<\/div>'

end


def print_lineup(comedians)

	lineup = '<ul class=\"lineup\">'

	for item in comedians.split(',')
  		lineup += print_comedian(item)	
	end

        lineup+='<\/ul>'

	return lineup;

end

def output_something(comedians, date, showName)

	if showName.nil? || showName.empty? || showName == "NO SHOW"
		puts ''
	else
		puts 'document.write("<div class=\"show-wrapper\"><div class=\"show-heading-wrapper\"><h1 class=\"show-heading\">'+date+" - "+showName+'<\/h1><\/div><div class=\"show-body\"><div class=\"description\">'+getDescription(showName)+'<\/div>'+
		+print_lineup(comedians)+
		+print_ticket_button(showName)+'<\/div><\/div><style type=\"text/css\">body {\n  font-family: \'Roboto\' !important;\n}\n.comedian-tile {\n  padding: 10px;\n}\n.headshot {\n  width: 150px;\n  height: 150px;\n  overflow: hidden;\n}\n.headshot img {\n  width: 150px;\n}  \nul.lineup li  {\n  display: inline-block;\n  vertical-align: top;\n  font-size: 14px;\n  text-align: center;\n  max-width: 150px;\n  font-family: \'Roboto\' !important;\n  width: 150px;\n}\n.show-wrapper {\n  background-color: lightgrey;\n  -webkit-border-bottom-left-radius: 20px;\n  -webkit-border-bottom-right-radius: 20px;\n  -moz-border-radius-bottomleft: 20px;\n  -moz-border-radius-bottomright: 20px;\n  border-bottom-left-radius: 20px;\n  border-bottom-right-radius: 20px;\n}\n.wsite-section-content .container {\n  background-color: #aaaaaa !important;\n}\n.show-body {\n  padding: 20px;\n}\n.description {\n  margin-bottom: 10px;\n}\n.show-heading-wrapper {\n  background-color: #aaa;\n}\n.show-heading {\n  background-color: #A9A9A9;\n  font-family: \'Roboto\' !important;\n  font-size: 22px;\n  font-weight: bold;\n  padding: 20px;\n  -webkit-border-top-left-radius: 20px;\n  -webkit-border-top-right-radius: 20px;\n  -moz-border-radius-topleft: 20px;\n  -moz-border-radius-topright: 20px;\n  border-top-left-radius: 20px;\n  border-top-right-radius: 20px;\n}\n.details {\n  padding: 20px;\n}\n.price {\n  font-weight: bold;\n  font-size: 18px;\n  margin: 10px 0px 5px 0px;\n}\n.minimum {\n  margin: 10px 0px 25px 0px;\n}\n.faq {\n  margin: 5px 0px\n}\n.faq a {\n  text-decoration: underline;\n}\n.show-type-photo img {\n  max-width: 100%;\n}\nh1.comic-name {\n  font-size: 16px;\n  margin: 5px 0px 5px 0px;\n}\n.eventbrite {\n  padding-top: 20px;\n}\n@media only screen and (max-width: 450px) {\n  ul.lineup li {\n    width: 40%;  \n  }\n  .headshot {\n    width: 130px;\n    height: 130px;\n    overflow: hidden;\n  }\n  .headshot img {\n   width: 130px;\n  }  \n}<\/style>");'
	end
end

output_something(ARGV[0],ARGV[1], ARGV[2]);
