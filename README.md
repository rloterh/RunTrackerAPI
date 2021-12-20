# RunTrackerAPI - A Restful API Backend (Microverse Full Stack Capstone project)

![Microverse](https://img.shields.io/badge/-Microverse-007bff?style=for-the-badge)

## Description
This project handles API calls and Json Web Token for authentication of Run Tracking applications, fed to a separate React/ Redux frontend. 
[RunTracker frontend](https://github.com/rloterh/RunTracker/tree/build)



## Directory 📙

| Contents                  |
| ------------------------- |
| [ERD](#erd) |
| [Endpoints](#endpoints) |
| [Built With](#built-with)   |
| [Getting Started](#getting-started)   |
| [Validation & Testing](#validation--testing)   |
| [Author](#author)       |
| [License](#license)       |


## ERD

![erd](https://user-images.githubusercontent.com/12745474/146757905-41a3dcee-bdb1-44ce-8a12-a0dacfb57a8f.png)


## Endpoints

| Actions   |             Description           |   Method   | URL           |
|:---------:|:---------------------------------:|:----------:|:-------------:|
| index     | Retrieve list of sprint records   | GET        | /sprints      |
| create    | Record new sprint activity        | POST       | /sprints      |
| show      | Retrieve a sprint details         | GET        | /sprints/:id  |
| create    | Creates a new user                | POST       | /users        |
| session   | Creates a new session             | POST       | /login        |


## Built With

- Ruby on Rails 6.1.4
- Ruby 3.0.3 6.1.4
- JWT
- PostgreSQL
- Heroku


## Getting Started

1. - In your terminal run the command `git clone https://github.com/rloterh/RunTrackerAPI.git`
2. - Navigate to the cloned project directory
3. - Setup the ruby environment similar to version 3.0.3
4. - Configure the appropriate PostgreSQL for the application database
5. - Run the command `bundle` to install project dependencies
6. - Setup the database with the command `rails db:create`
7. - Run database migration with the command `rails db:migrate` 
8. - Run the command `npm i`, in the event of _Webpack/ Manifest_ related post installation errors
9. - The API endpoints will be served on your local server


## Validation & Testing

The syntax of this project was mainly standardized using [Rubocop linter](https://rubocop.org/)

This application was tested using mainly [Rspec](https://rspec.info/)
 

### Validating Ruby on Rails Syntax

1. - Ensure that _rubocop_ dependency is listed in the _Gemfile_ and installed using the command `bundle`
2. - Run the command `rubocop` to scan syntax, within the project's root directory
3. - Go to [npmjs.com](https://www.npmjs.com/get-npm) to install node package manager, if not installed 
4. - All validation cases passes, when no error message is displayed in the terminal


### Testing

1. - Ensure that _rspec_ dependency is listed in the _Gemfile_ and installed using the command `bundle`
2. - Within the terminal, navigate to project directory
4. - Run the command `rspec`
5. - All test cases passes, when no error message is displayed in the terminal



## Author

### 👨‍💻 Robert Loterh

[![GitHub](https://img.shields.io/badge/-GitHub-000?style=for-the-badge&logo=GitHub&logoColor=white)](https://github.com/rloterh) <br>
[![LINKEDIN](https://img.shields.io/badge/-LINKEDIN-0077B5?style=for-the-badge&logo=Linkedin&logoColor=white)](https://www.linkedin.com/in/robert-loterh/) <br>
[![EMAIL](https://img.shields.io/badge/-EMAIL-D14836?style=for-the-badge&logo=Mail.Ru&logoColor=white)](mailto:rloterh@gmail.com) <br>
[![TWITTER](https://img.shields.io/badge/-TWITTER-1DA1F2?style=for-the-badge&logo=Twitter&logoColor=white)](https://twitter.com/RLoterh) <br>


## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/rloterh/RunTrackerAPI/issues).


## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments
- [Microverse](https://www.microverse.org/)


### License

![Cocoapods](https://img.shields.io/cocoapods/l/AFNetworking?color=red&style=for-the-badge)