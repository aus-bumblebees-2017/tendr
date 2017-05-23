# CONTRIBUTING

### Pull Request Workflow
1. Fork project into your github repository
1. Create a branch named for the feature you are working on
1. Add the upstream repository to your local project
```
git remote add upstream https://github.com/aus-bumblebees-2017/tendr.git
heroku git:remote -r staging -a tendr-staging
heroku git:remote -r production -a tendr-app

```
* Write Code
* Commit your code and write a [good commit message](http://robots.thoughtbot.com/5-useful-tips-for-a-better-commit-message)
* Push your branch and changes to your Github repository
* Create a Pull Request to your cohort organization

### Code Review Workflow
1. Another team mate reviews the pull request and writes code comments on Github
2. You make the desired changes (using the [Pull Request Workflow](#pull-request-workflow))
3. Repeat #1-2 until teammate has no more changes that need to be made
4. Code reviewer merges pull request

### Getting changes

You'll need to get changes that other pairs.  Use the `upstream` remote that we created earlier.

```
git pull upstream master
```

# Code Style
- Styleguides
  - [AirBnB Ruby Styleguide](https://github.com/airbnb/ruby)
  - [AirBnB JavaScript Styleguide](https://github.com/airbnb/javascript)

# Testing
Write tests using [rspec for rails](https://github.com/rspec/rspec-rails) and [cabybara](https://relishapp.com/rspec/rspec-rails/v/3-4/docs/feature-specs/feature-spec).
Run your tests using:
```
rails rspec
```

Seed Database
```
RAILS_ENV=test db:seed
```

## this is where documentation on how travis works will go
