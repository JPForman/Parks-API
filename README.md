# _National Parks API_

#### An API of National Parks with associated reviews.

###### By Joshua Forman

## Description

_This API is designed for the user to be able to GET, PATCH, DESTROY, AND POST National Parks as well as reviews for any park. This was completed in Ruby with Rails and ActiveRecord._  

_NOTE: Admin permissions can only be added outside of the program._


## Specs

1. _Full CRUD functionality for parks._

2. _Full CRUD functionality for reviews._

3. _Routing for a one to many relationship._

4. _Endpoints for GET, PATCH, DESTROY, and POST of both parks and reviews._

_(for more detailed specs, see included specs files)_

## Setup

_Using command line:_
* _$ git clone https://github.com/JPForman/Parks-API.git ._
* _$ bundle install_
* _$ rake db:create_
* _$ rake db:test:prepare_
* _$ rake db:migrate_
* _$ rails s_  

## For routing and endpoints

* _$ rake routes_  
or  
*_GET /Parks_  
*_GET /Parks/id_  
*_GET /Parks/park_id/reviews_  
*_GET /Parks/park_id/reviews/id_  

(same with PATCH, POST, or DESTROY)


## Support and contact details

_Email: [cyborgforman@gmail.com](mailto:cyborgforman@gmail.com)_

## Technologies Used

_Ruby, Rails, rspec, psql, ActiveRecord_


### Known Bugs
_needs more thorough testing_  
_needs accurate elements for National Park names and states_  


### License

*MIT*

Copyright (c) 2020 **_Joshua Forman_**
