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

_$ rake routes_  
or  

To get all parks:  
_GET http://Parks_  

To get a random park:  
_GET http://Parks/random_

To get a park by id:  
_GET http://Parks/id_

To update a park by id:  
_PATCH http://Parks/id_

To create a park by id:  
_POST http://Parks/id_

_To get all of a park's reviews_  
_GET http://Parks/park_id/reviews_

_To get a park's specific review by id_  
_GET http://Parks/park_id/reviews/id_  

_To update a park's specific review by id_  
_PATCH http://Parks/park_id/reviews/id_  

To create a park's specific review by id_  
_POST http://Parks/park_id/reviews/id_  

To destroy a park's specific review by id_  
_DESTROY http://Parks/park_id/reviews/id_  


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
