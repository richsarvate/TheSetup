update:
	@echo "updating the schedule"
	@ruby updateSchedule.rb "`ruby getLineupForDay.rb Thursday 0`" "Thursday June 28th 8pm" > scheduleThurs.js

	@echo "pushing updates to git"
	@git add .
	@git commit -m "updating the schedule"
	@git push
