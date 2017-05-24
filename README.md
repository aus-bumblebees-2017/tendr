# Tendr - the Tindr of Food

# Team
* [Juan](https://github.com/zjuanz)
* [Sarah](https://github.com/sbetack)
* [Wes](https://github.com/yellowjell0)
* [Ben](https://github.com/bmartin2015)

# Description / User Stories:
* As a user, I can visit the homepage

## User Registration
* As a user, I want to be able to register.
* As a user, I can set my dietary preferences/restrictions
* As a user, I want to add a zip code
* As a user, I want to recover lost password

## User Login
* As a user, I want to login.
* As a user, I want to start swiping after logging in, or the last food I clicked 'take me' on.
* As a user, I will be asked if I liked/ate at the last 'take me'

## User Interaction
* As a user, I want to be able to filter food categories/location
* As a user, I can edit my user profile
* As a user, I can see my history
* As a user, I swipe left and I move to next food item
* As a user, I swipe right and that add the restaurant to the 'liked' list
* As a user, I click the image/button and it gives me restaurant details
* As a user, I click on the "take me", and it will ask if I ate that food next time I login.
* As a user, I click on the 'favorites' and it takes me to the favorite list.
* As a user, I click on an item in the favorites list, and it takes me to the restaurant details

## User Management
* As user, I want to be able reset my password.
* As user, I want to be able to change my email.
* As user, I want to be able to change my preferences.


## Location filters!
* GPS info
* ZIP codes

# Install
Deploy to Heroku

Push Master to Heroku Staging
```
git push staging master
heroku run rake db:migrate --remote staging
```


Push Master to Heroku Production
```
git push production master
heroku run rake db:migrate --remote production
```

To Drop Database - Something like:
```
heroku pg:reset --remote staging
```
# How to Use
