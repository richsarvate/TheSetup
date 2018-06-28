update:
	@echo "updating the schedule"
	@ruby updateSchedule.rb "`cat thurs`" "Thursday June 28th 8pm" > scheduleThurs.js

	@echo "pushing updates to git"
	@git add .
	@git commit -m "updating the schedule"
	@git push
