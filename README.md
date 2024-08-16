# README

### Forward
Hi ya'll! My name is Jonathon Harrell, and this is my Weather App Project for you guys to peruse. I've been working in a highly customized Rails 5 environment for some time, so I decided to go with what's out of the box in Rails 7 for this. I am more comfortable in RSpec by far than I am in Minitest, but I decided to stick with Minitest for this project. I'm used to Foundation on the frontend but chose to go with Bootstrap for this project, just to shake things up a bit.

I demonstrate use of some common design patterns here, such as presenters/decorators and service patterns. Services typically represent a single task, and the presenter is there for display logic that shouldn't be clogging up a view. I also chose to adhere to REST for the urls. And for caching I implemented memcached and chose to omit the database, since there isn't much need for one in this application.

I want to note that I would have used Apple's weatherkit API, but I was having some trouble signing up for a developer account, so I went with some free/open APIs.

Thanks for giving me this opportunity, can't wait to chat with your team!

### Running the Application
You'll need memcached running locally:
`sudo apt-get install memcached` or use `brew` equivalents
`sudo systemctl memcached start`

No database should be needed.

I've gone ahead and committed the master.key, which would generally not be good obviously, but in this case it's the easiest way to share it with your team, and API access for these credentials is free anyway.

Then just pull down the repo, `rails s` and navigate to localhost:3000 as usual. Running tests locally (`rails test`) will generate a coverage report. Last run it was at 97.7% coverage.

You should be able to submit any address and be shown a page with weather information.

### Possible Improvements
The app could use more error handling/logging. The database is unimplemented but sessions are being stored so postgres could/should be included. Docker could be utilized to make dev environment setup easier. Timezones could be dynamic rather than statically using central. Presentation could use an overhaul - it'd be nice to present the weather as a graph over time.