# README

### Forward
Hi ya'll! I've been working in a highly customized Rails 5 environment for some time, so I decided to go with what's out of the box in Rails 7 for this. I am more comfortable in RSpec by far than I am in Minitest, but I decided to stick with Minitest for this project.

I demonstrate use of some common design patterns here, such as presenters and service patterns. Services typically represent a single task, and the presenter is there for display logic that shouldn't be present in a view. I also chose to adhere to REST for the urls. And for caching I implemented memcached and chose to omit the database, since there isn't much need for one in this application.

I want to note that I would have used Apple's weatherkit API, but I was having some trouble signing up for a developer account, so I went with some free/open APIs.

Thanks for giving me this opportunity, can't wait to chat with your team!

### Running the Application
You'll need memcached running locally:
`sudo apt-get install memcached` or use `brew` equivalents
`sudo systemctl memcached start`

No database should be needed.

Then just pull down the repo, `rails s` and navigate to localhost:3000 as usual.

You should be able to submit any address and be shown a page with weather information.