# Rails Decal Project 2: RateMyGSI

Using this application, students can rate their GSIs and leave a comment. Students can also search by GSI name, read other students’ reviews, and vote whether the review was helpful or not helpful.


## Getting Started

First run ```rails new ratemygsi``` in the directory of your choice to create your application and ```cd ratemygsi```. Then run ```rails server``` to check our website.


## Built With

* Ruby on Rails - The web framework used
* devise - Ruby gem for user authenticiation
* HTML/CSS - Web design


## Models

What models were used to build this web application?

**Course**
```
name:string
```
**GSI**
```
name:string
course:string
```
**Review**
```
content:text
clarity:integer
attitude:integer
problem:integer (score of how much does the GSI focus on problem solving)
concept:interger (score of how much does the GSI focus on explaining concepts)
gsi_id:integer
user_id:integer
```
**User**
```
email:string
username:string
```

## Authors

* Dave Kwon
* Mesut Yang
* Jenny Shangjun Jiang
* Meejin Choi
