# SetupGuestList

A Python automation suite for managing ticketing, guest lists, and sales reporting for a nationwide event business, deployed on AWS EC2.

## Overview
This project automates ticket order retrieval, email-based sales tracking, and guest list consolidation across seven U.S. cities. It integrates with Eventbrite, Goldstar, Squarespace, and Fever APIs, scrapes email data, and organizes results in Google Sheets with dynamic worksheet management.

## Features
- Fetches ticket orders from Eventbrite, Goldstar, Squarespace, and Fever APIs.
- Extracts sales data from Gmail emails using HTML parsing and CSV processing.
- Consolidates data into Google Sheets with checkboxes, totals, and outdated worksheet hiding.
- Runs automatically via crontab on AWS EC2.

## Technologies
- Languages and Libraries: Python (requests, gspread, BeautifulSoup, googleapiclient, oauth2client)
- APIs: Eventbrite, Goldstar, Squarespace, Fever, Google Sheets, Gmail API
- Infrastructure: AWS EC2, crontab
- Tools: GitHub, ChatGPT (for prototyping parsing logic)

## Setup
### Prerequisites
- Python 3.x
- Install dependencies: pip install requests gspread google-auth-oauthlib google-auth-httplib2 google-api-python-client beautifulsoup4

### Configuration
1. Create config.py with placeholders:
   - EVENTBRITE_ORGANIZATION_ID = "[ORGANIZATION_ID]"
   - EVENTBRITE_PRIVATE_TOKEN = "[API_TOKEN]"
   - SQUARESPACE_API_KEY = "[API_KEY]"
   - GUEST_LIST_FOLDER_ID = "[FOLDER_ID]"
2. Generate creds.json and gmailApiCreds.json with Google Service Account and OAuth credentials (redact private keys).
3. Upload scripts to /home/ec2-user/GuestListScripts/ on AWS EC2.
4. Place creds.json, gmailApiCreds.json, and token.pickle in the same directory.
5. Set up crontab (e.g., 0 * * * * /usr/bin/python3 /home/ec2-user/GuestListScripts/getEventbriteOrders.py for hourly runs).

### Running Locally
1. Set credentials in config.py.
2. Run a script: python getEventbriteOrders.py [interval]

## Usage
- getEventbriteOrders.py: Fetches Eventbrite orders with a configurable interval.
- getSquarespaceOrders.py: Retrieves Squarespace orders and updates Sheets.
- getDoMoreFromGmail.py: Processes DoMORE guest lists from Gmail.
- getFeverFromGmail.py: Extracts Fever sales from email HTML.
- getGoldstarFromGmail.py: Parses Goldstar CSV attachments.
- addEmailToMailerLite.py: Adds contacts to MailerLite segments.
- insertIntoGoogleSheet.py: Consolidates data and adds Sheets formulas.
- hideOldGoogleSheets.py: Hides worksheets older than one day.
- sortGoogleWorksheets.py: Arranges worksheets by date.
- Edit API endpoints or email filters in respective scripts.

## Contributing
Fork the repository and submit pull requests. Add comments to clarify code changes.

## Notes
Prototyped parsing and error-handling logic with ChatGPT, refined for production.
Logs to /home/ec2-user/GuestListScripts/log.txt with rotation.
Last updated: 2024; consider adding a new script (e.g., ad analytics) for 2025 activity.

## Author
Richard Sarvate - [LinkedIn](https://www.linkedin.com/in/richardsarvate/) | [GitHub](https://github.com/richsarvate)
