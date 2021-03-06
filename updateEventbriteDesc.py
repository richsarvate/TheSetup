import requests
import json
import urllib.parse
import subprocess

start = "<P><SPAN><STRONG>About The Show</STRONG><BR></SPAN></P><P><SPAN><A HREF=\"http://www.setupcomedy.com\" TARGET=\"_blank\" TITLE=\"The Setup\" REL=\"noreferrer noopener nofollow noopener noreferrer nofollow\"><SPAN>The Setup </SPAN></A>is an underground stand up comedy show located at the newly opened <A HREF=\"http://www.beeradvocate.com/beer/profile/45672/\" TARGET=\"_blank\" REL=\"noreferrer noopener nofollow noopener noreferrer nofollow\">Ales Unlimited: Beer Basement</A> in the heart of San Francisco. This venue was once the green room for the legendary <A HREF=\"http://en.wikipedia.org/wiki/Black_Hawk_(nightclub)\" TARGET=\"_blank\" REL=\"noreferrer noopener nofollow noopener noreferrer nofollow\"><SPAN>Blackhawk jazz</SPAN></A> venue. Miles Davis snorted coke in this room. That's comedy feng shui.<BR></SPAN></P><UL><LI><A HREF=\"http://www.clickitticket.com/best-comedy-clubs/\" TARGET=\"_blank\" REL=\"noreferrer noopener nofollow noopener noreferrer nofollow\">\"One of the best places for stand up comedy in San Francisco\" - TimeOut</A></LI><LI><A HREF=\"http://www.clickitticket.com/best-comedy-clubs/\" TARGET=\"_blank\" REL=\"noreferrer noopener nofollow noopener noreferrer nofollow\">\"One of the 50 Best Comedy Clubs In America\" - ClickItTicket</A></LI><LI><A HREF=\"https://www.thrillist.com/lifestyle/san-francisco/the-best-comedy-clubs-and-shows-in-san-francisco\" TARGET=\"_blank\" REL=\"noreferrer noopener nofollow noopener noreferrer nofollow\">\"One of the best shows in San Francisco\" - ThrillList</A></LI><LI><A HREF=\"https://www.yelp.com/biz/the-setup-stand-up-comedy-san-francisco-2\" TARGET=\"_blank\" REL=\"noreferrer noopener nofollow noopener noreferrer nofollow\">5 Stars on Yelp</A></LI></UL><P><IMG ALT=\"\" SRC=\"https://www.eventbrite.com/static/js/tiny_mce_3511/themes/advanced/img/trans.gif\">The show is hosted by local favorites <A HREF=\"http://www.rsarvate.com\" TARGET=\"_blank\" REL=\"noreferrer noopener nofollow noopener noreferrer nofollow\">Richard Sarvate</A> and <A HREF=\"http://comedianabhay.com\" TARGET=\"_blank\" REL=\"noreferrer noopener nofollow noopener noreferrer nofollow\">Abhay Nadkarni.</A> We feature established comedians from around the country as well as local up-and-coming stars. Our goal is to provide a truly raw alternative experience. San Francisco is known for indulging and incubating the absurd whims, oddities, and genius of the freaks who call it home. Think Lenny Bruce, Robin Williams, Jefferson Airplane.</P><P><SPAN><A HREF=\"https://youtu.be/ypVQFEzkt8s\" TARGET=\"_blank\" REL=\"noreferrer noopener nofollow noopener noreferrer nofollow\">Watch clips from the show</A></SPAN></P><P><STRONG>---------------------------------------------------------------------------<BR></STRONG></P><P><STRONG>LINEUPS<BR></STRONG></P><P>"

end = "</P><P><STRONG>With your hosts <A HREF=\"http://www.rsarvate.com\" TARGET=\"_blank\" REL=\"noreferrer noopener nofollow noopener noreferrer nofollow\">Richard Sarvate (SF Punchline)</A> and <A HREF=\"http://comedianabhay.com\" TARGET=\"_blank\" REL=\"noreferrer noopener nofollow noopener noreferrer nofollow\">Abhay (SF Sketchfest)</A> !</STRONG></P><P>FAQ:<BR>Q. Is there a drink minimum?<BR>A. YES, there is a ONE drink minimum.</P><P><SPAN>Q. Is there parking available?</SPAN><BR><SPAN><SPAN>A. There is no parking at the venue, but there are many public parking garages close by.</SPAN><SPAN>The closest one is <A HREF=\"http://www.yelp.com/biz/golden-gate-garage-san-francisco\" TARGET=\"_blank\" REL=\"noreferrer noopener nofollow noopener noreferrer nofollow\"><SPAN>Golden Gate Parking</SPAN></A>.</SPAN></SPAN></P><P><SPAN><SPAN>Q. Is the venue age restricted?<BR>A. YES, please have your ID as it's 21 and over. This is strictly enforced.<BR></SPAN></SPAN><STRONG><BR><IMG SRC=\"https://cdn.evbuc.com/eventlogos/36607182/setup.jpg\"></STRONG></P><P>Check our <A HREF=\"http://www.setupcomedy.com\" TARGET=\"_blank\" REL=\"noreferrer noopener nofollow noopener noreferrer nofollow\">website</A>, <SPAN><A HREF=\"http://www.thesetupsf.com\" TARGET=\"_blank\" REL=\"noreferrer noopener nofollow noopener noreferrer nofollow\">email</A>, or call us at <SPAN>(415) 923-8610</SPAN> anytime</SPAN>.</P><P><SPAN>* The Setup has open seating on a first come, first serve basis. Seats are not guaranteed past the start time on your ticket so please be here early.  Please buy your tickets online to guarantee a seat. The event sells out quickly. <BR></SPAN>* All sales are final. There are no refunds.<BR>* There is a one drink minimum</P><P>See you at the show!</P>"

result = subprocess.run(['ruby', 'getDateForNextDay.rb', 'Thursday', '0'], stdout=subprocess.PIPE)
thursdayDate = result.stdout.decode('utf-8').strip()

result = subprocess.run(['ruby', 'getLineupForDay.rb', 'Thursday', '0'], stdout=subprocess.PIPE)
thursdayLineup = result.stdout.decode('utf-8').strip().replace(",", "<br>")

result = subprocess.run(['ruby', 'getDateForNextDay.rb', 'Friday', '0'], stdout=subprocess.PIPE)
fridayDate = result.stdout.decode('utf-8').strip()

result = subprocess.run(['ruby', 'getLineupForDay.rb', 'Friday', '0'], stdout=subprocess.PIPE)
fridayLineup = result.stdout.decode('utf-8').strip().replace(",", "<br>")

result = subprocess.run(['ruby', 'getDateForNextDay.rb', 'Saturday', '0'], stdout=subprocess.PIPE)
saturdayDate = result.stdout.decode('utf-8').strip()

result = subprocess.run(['ruby', 'getLineupForDay.rb', 'Saturday', '0'], stdout=subprocess.PIPE)
saturdayLineup = result.stdout.decode('utf-8').strip().replace(",", "<br>")

result = subprocess.run(['ruby', 'getDateForNextDay.rb', 'Saturday', '1'], stdout=subprocess.PIPE)
saturdayDate2 = result.stdout.decode('utf-8').strip()

result = subprocess.run(['ruby', 'getLineupForDay.rb', 'Saturday', '1'], stdout=subprocess.PIPE)
saturdayLineup2 = result.stdout.decode('utf-8').strip().replace(",", "<br>")

lineup = "<STRONG>Thursday "+thursdayDate+" (</STRONG>8pm<STRONG>)</STRONG><BR>"+thursdayLineup+"</P><P><STRONG>Friday "+fridayDate+" (</STRONG>8pm<STRONG>)</STRONG><BR>"+fridayLineup+"</P><P><STRONG>Saturday "+saturdayDate+" (</STRONG>8pm<STRONG>)</STRONG><BR>"+saturdayLineup+"</P><P><STRONG>Saturday "+saturdayDate2+" (</STRONG>10pm<STRONG>)</STRONG><BR>"+saturdayLineup2

r = requests.post("https://www.eventbriteapi.com/v3/series/47615979677/",
                headers = {"Authorization": "Bearer XZJ5OCCSCTM3XJL5RNMW",},
                data = {"series_parent.description.html": start+lineup+end,},
                verify = True
                )
