update:
	@echo "updating the schedule"
	@ruby updateSchedule.rb "`ruby getLineupForDay.rb Thursday 0`" "Thursday `ruby getDateForNextDay.rb Thursday`" > scheduleThurs.js
	@ruby updateSchedule.rb "`ruby getLineupForDay.rb Friday 0`" "Friday `ruby getDateForNextDay.rb Friday`" > scheduleFri8pm.js
	@ruby updateSchedule.rb "`ruby getLineupForDay.rb Saturday 0`" "Saturday `ruby getDateForNextDay.rb Saturday`" > scheduleSat8pm.js
	@ruby updateSchedule.rb "`ruby getLineupForDay.rb Saturday 1`" "Saturday `ruby getDateForNextDay.rb Saturday`" > scheduleSat10pm.js

	@echo "pushing updates to git"
	@git add .
	@git commit -m "updating the schedule"
	@git push
