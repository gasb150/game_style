# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
I create a rails app, accordding to 

1. The user logs in to the app, only by typing the username (a proper authenticated login is not a requirement).
2. The user is presented with the homepage (see the *Homepage* screenshot above) that includes:
    1. Featured article with full-width image and title in the first row. This should be an article with the biggest number of votes. *Skip the carousel widget and weather and city information.*
    2. List of all categories in order of priority. Each category should be displayed as a square with its name on the top and its most recent article's title in the bottom. The background image should be the image of the most recent article in this category.
3.  When the user clicks the category name they can see all articles in that category (see the *Articles in selected category page* screenshot above):
    1. Articles are sorted by most recent.
    2. Each article displays: image, title, truncated text as preview and its **author name**.
    3. Skip the *Read more* link implementation.
    4. Add extra button to add a vote for article (each user can vote only once).
 4. Each page should use the same top menu and footer:
    1. Top menu is presented at the *Homepage* screenshot above. It should include only links to pages that are implemented: *Home* and *Write an article*.
    2. Footer is presented at the *Articles in selected category page* screenshot above.
5. When user opens "*Write an article*" page:
    1. A form with all necessary fields is displayed.
    2. It's not in the given design, but you should make an effort to follow the same style of the other pages.
6. At the end extend your MVP app with one simple feature of your choice.
