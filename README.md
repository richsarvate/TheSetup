# The Setup – Lineup Automation Tool

This repo powers the automation behind **The Setup**, an underground stand-up comedy show in San Francisco. It generates weekly show lineups, formats HTML for Eventbrite and our website, and updates the event listings programmatically.

## 🚀 What It Does

- Pulls upcoming show dates and lineups from a Google Sheet
- Formats the information into HTML with styled performer tiles
- Automatically updates Eventbrite event descriptions via API
- Generates show pages and embeds for website use

## 🧱 Components

### 🔹 Lineup Generation

- `getDateForNextDay.rb`  
  Given a weekday name (e.g. `"Friday"`), returns the next upcoming date for that day.

- `getLineupForDay.rb`  
  Pulls a list of comedians for the given day and show index (8pm or 10pm) from a Google Sheet (`The Setup Lineups` → `Beer Basement` tab).

- `getShowNameForDay.rb`  
  Gets the name/title of the show (e.g. `"Tech Roast"`, `"Craft Beer and Comedy"`).

### 🔹 HTML Generation

- `generateEventbriteLineup.rb`  
  Outputs formatted HTML for the week’s shows, ready to paste into Eventbrite.

- `methods.rb`, `updateSchedule.rb`  
  Utility scripts for rendering HTML tiles with headshots and show info.

- `schedule*.js`  
  Hardcoded example schedules that generate styled show pages with inline CSS.

### 🔹 Eventbrite Integration

- `updateEventbriteDesc.py`  
  Main script that runs the lineup generation, assembles the full HTML description, and sends a POST request to update the Eventbrite series description via API.

## ⚙️ Dependencies

- Ruby
- Python 3
- Google Drive API (via `client_secret.json`)
- Eventbrite API key

Install Python dependencies:
```bash
pip install -r requirements.txt

