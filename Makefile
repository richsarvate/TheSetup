update:
	@echo "updating the schedule"
	@ruby updateSchedule.rb "Richard Sarvate,Natasha Muse,Ryan Goodcase,Mean Dave,Shannon Murphy" "Thursday June 28th 8pm" > scheduleThurs.js

	@echo "pushing updates to git"
	@git add .
	@git commit -m "updating the schedule"
	@git push
