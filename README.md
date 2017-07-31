
### 1. Set up your GIPHY API Key into a file - local.env
* sign up for a GIPHY Acount
* get a developer key
* paste your key into the first line of local.env

### 2. Add a form to search_page.erb
* the form should have one input, with the name "user_search_word"

### 3. Get the search term from the form
* In application_controller.rb, use params to get the value from the user_search_word input and assign it to search_term variable

### 4. Make sure the giphy hash is an instance variable so it can be passed to the view
* You might need to google search "instance variable Sinatra"

### 5. In the results_page.erb, make sure we see a moving gif
* you will have to make sure the hash is an instance variable
* parse the hash so that it DOESN'T return the still image,but actually returns a moving gif. [Look at the documentation for help!]
