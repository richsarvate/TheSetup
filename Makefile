update:
	@echo "updating the schedule"
	@ruby updateSchedule.rb "`ruby getLineupForDay.rb Thursday 0`" "Thursday `ruby getDateForNextDay.rb Thursday`" > scheduleThurs.js

	@echo "pushing updates to git"
	@git add .
	@git commit -m "updating the schedule"
	@git push
