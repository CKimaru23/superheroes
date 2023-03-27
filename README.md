## Heroes API
This is a RESTful API for managing heroes and their powers. The API is built using Ruby on Rails.

### Installation
To get started, first clone this repository:

```ruby
$ https://github.com/CKimaru23/superheroes.git
```

Then, navigate into the project directory and install the dependencies:

```ruby
$ cd superheroes
$ bundle install
```
Next, create the database and run the migrations:

### Models
The application has the following models:

#### Hero
A Hero has the following attributes:

name: string
super_name: string
A Hero has many Powers through HeroPower.

#### Power
A Power has the following attributes:

name: string
description: text
A Power has many Heros through HeroPower.

#### HeroPower
A HeroPower has the following attributes:

strength: string
A HeroPower belongs to a Hero and belongs to a Power.

And the ERD Diagram will look like this:

```ruby
![ERD Diagram](/rdbms.png)


```

```ruby
$ rails db:create
$ rails db:migrate
```

Finally, start the server:

```ruby
$ rails server
```
You should now be able to access the API at http://localhost:3000.

### Usage
The API provides the following endpoints:

```ruby
GET /heros
GET /heros/:id
GET /powers
GET /powers/:id
PATCH /powers/:id
POST /hero_powers
```

### License
This project is licensed under the MIT License - see the LICENSE file for details.

