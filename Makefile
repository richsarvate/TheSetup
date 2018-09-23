update:
	@echo "updating the schedule"
	@ruby updateSchedule.rb "`ruby getLineupForDay.rb Thursday 0`" "Thursday `ruby getDateForNextDay.rb Thursday` 8pm" "`ruby getShowNameForDay.rb Thursday 0`"> scheduleThurs.js
	@ruby updateSchedule.rb "`ruby getLineupForDay.rb Friday 0`" "Friday `ruby getDateForNextDay.rb Friday` 8pm" "`ruby getShowNameForDay.rb Friday 0`"> scheduleFri8pm.js
	@ruby updateSchedule.rb "`ruby getLineupForDay.rb Saturday 0`" "Saturday `ruby getDateForNextDay.rb Saturday` 8pm" "`ruby getShowNameForDay.rb Saturday 0`"> scheduleSat8pm.js
	@ruby updateSchedule.rb "`ruby getLineupForDay.rb Saturday 1`" "Saturday `ruby getDateForNextDay.rb Saturday` 10pm" "`ruby getShowNameForDay.rb Saturday 1`"> scheduleSat10pm.js

	@python3 updateEventbriteDesc.py

	@echo "pushing updates to git"
	@git add .
	@git commit -m "updating the schedule"
	@git push
