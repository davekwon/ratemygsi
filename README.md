# Rails Decal Project 2: RateMyGSI

<strong>Title</strong>: RateMyGSI
<strong> Team Members</strong>: Dave Kwon, Mesut Yang, Shangjun Jiang, Meejin Choi
<strong> Demolink </strong>:

Using this application, students can rate their GSIs and leave a comment. Students can also search by GSI name, read other students’ reviews, and vote whether the review was helpful or not helpful.

## Motivation/Idea

Finding a good course taught by a good professor is important. Finding a good GSI(TA), however, can be as important as that because students often learn from diecussion sections/labs as much as what they learn from lecture. There are lots of review websites for professors and courses but none for GSIs(TAs). We thought this website would serve Berkeley students who want to get to know about GSIs' teadching styles to help them find an ideal GSI depending on individual's learning style.

## Installation

First run ```rails new ratemygsi``` in the directory of your choice to create your application and ```cd ratemygsi```. 

Once you're in the directory, run ```git clone https://github.com/davekwon/ratemygsi.git```

Run ```rails db:migrate``` and ```rake db:seed```

Then run ```rails server``` and on your browser, go to ```localhost:3000``` and check our website!


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

## Features


## Division of Labor

Dave Kwon & Mesut Yang: back-end, made models and associations, made seeds
Shangjun Jiang & Meejin Choi: front-end, HTML/CSS/JavaScript/bootstrap

## Authors

* Dave Kwon
* Mesut Yang
* Shangjun Jiang
* Meejin Choi
