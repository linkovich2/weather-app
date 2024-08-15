# README


### Forward
Hi ya'll! Admittedly I've been a bit behind in Rails (most of my professional experience is in Rails 5), so I decided to go with a lot of what's out of the box in Rails 7 so I could quickly get up to speed. I am more comfortable in RSpec by far than I am in Minitest, but I decided to stick with Minitest for this project.

I demonstrate use of some common design patterns here, such as presenters and service patterns. Services typically represent a single task, and the presenter is there for display logic that shouldn't be present in a view. I also chose to adhere to REST for the urls. And for caching I implemented memcached and chose to omit the database, since there isn't much need for one in this application.

I want to note that I would have used Apple's weatherkit API, but I was having some trouble signing up for a developer account, so I went with some free/open APIs.

Thanks for giving me this opportunity, can't wait to chat with your team!


### Ways We Could Improve This App
Error handling! Right now if one of the requests fails everything falls apart. It would be a good idea to improve that aspect of the app.