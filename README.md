# Stock-App demo project

### Specification

Application users must be able to sign up, sign in and sign out.

When guest users navigates to application root path, they see a landing page with title 'Stock productivity calculator'.

After user creates an account they can sign in.

Signed in user sees a link 'Add Stock' on application navbar.

When signed in user clicks on the 'Add Stock' link, they get redirected to a new stock form view, where they can create a new Stock. The stock form has Name, Unit price, Interest and Duration in years fields. All four fields must be required and checked on backend and frontend.

When user creates a Stock instance, it belongs to them, The stock has reference of a current user.

When user successfully submits the new Stock form, they get navigated to the root path.

When signed in user navigates to application root path, they see a table of the Stocks they have created.

The Stock name column in the Stocks table contains links that lead to Stock show view.

The Stock show view has a summary of the Stock details and the bar chart that displays how Stock valuation changes over its duration in years. The valuation is calculated with compound interest formula.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

## Installing

#### Requirements

- Docker version 18.* or above
- docker-compose

1 Build docker image by running next command
```
docker-compose build web
```
2 Run image

```
docker-compose up
```
3 Visit local version [localhost:3000](http://localhost:3000/)

4 Login with test credentials
* email: user@email.com
* password: password

## Running the tests

1 Up image

2 Open new terminal window and run next command:
```
docker-compose run web rspec
```

## Deployment to Heroku

1 Login to Heroku:
```
heroku login
```

2 Create new application:
```
heroku create
```
3 Deploy your code:

Execute next command to deploy from master branch
```
git push heroku master
```
or deploy from develop branch

```
git push heroku develop:master
```

## Built With

* [Bootstrap 4](https://github.com/twbs/bootstrap-rubygem) - CSS framework
* [Devise](https://github.com/plataformatec/devise) - flexible authentication solution for Rails
* [Rspec](https://github.com/rspec/rspec-rails) - testing framework
* [Capybara](https://github.com/teamcapybara/capybara) - acceptance test framework
* [Factory Bot](https://github.com/thoughtbot/factory_bot_rails) - fixtures replacement


## Demo
[https://agile-hollows-53350.herokuapp.com/](https://agile-hollows-53350.herokuapp.com/)
