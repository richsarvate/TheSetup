update:
	@echo "updating the schedule"
	@ruby updateSchedule.rb "Richard Sarvate,Natasha Muse,Ryan Goodcase,Mean Dave,Shannon Murphy" > scheduleThurs.js

	@echo "pushing updates to git"
	@git add .
	@git commit -m "updating the schedule"
	@git push
