# Rails Decal Project 2: RateMyGSI

Using this application, students can rate their GSIs and leave a comment. Students can also search by GSI name, read other students’ reviews, and vote whether the review was helpful or not helpful.

# Motivation

Finding a good course taught by a good professor is important. Finding a good GSI(TA), however, can be as important as that because students often learn from diecussion sections/labs as much as what they learn from lecture. There are lots of review websites for professors and courses but none for GSIs(TAs). We thought this website would serve Berkeley students who want to get to know about GSIs' teadching styles to help them find an ideal GSI depending on individual's learning style.

## Installation

In the directory of your choice, run ```git clone https://github.com/davekwon/ratemygsi.git``` and ```cd ratemygsi```

Run ```bundle install```,  ```rake db:migrate```, and ```rake db:seed``` to set up the environment

Run ```rails server``` and on your browser, go to ```localhost:3000``` and check our website!


## Built With

* Ruby on Rails - The web framework used
* devise - Ruby gem for user authenticiation
* HTML/CSS/JavaScript/Bootstrap - Web design


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
