update:
	@echo "updating the schedule"
	@ruby updateSchedule.js > schedule.js

	@echo "pushing updates to git"
	@git add .
	@git commit -m "updating the schedule"
	@git push
