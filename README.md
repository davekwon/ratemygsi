# Rails Decal Project 2: RateMyGSI

<strong>Title</strong>: RateMyGSI
<strong> Team Members</strong>: Dave Kwon, Mesut Yang, Shangjun Jiang, Meejin Choi
<strong> Demolink </strong>:

Using this application, students can rate their GSIs and leave a comment. Students can also search by GSI name, read other students’ reviews, and vote whether the review was helpful or not helpful.

## Motivation

Finding a good course taught by a good professor is important. Finding a good GSI(TA), however, can be as important as that because students often learn from diecussion sections/labs as much as what they learn from lecture. There are lots of review websites for professors and courses but none for GSIs(TAs). We thought this website would serve Berkeley students who want to get to know about GSIs' teadching styles to help them find an ideal GSI depending on individual's learning style.

## Idea
An application where students can rate their GSIs and leave a comment. Students can also search by GSI name, read other students’ reviews, and vote whether the review was helpful or not helpful.



## Installation

In the directory of your choice, run ```git clone https://github.com/davekwon/ratemygsi.git```

Run ```bundle install```,  ```rake db:migrate```, and ```rake db:seed``` to set up the environment

Run ```rails db:migrate``` and ```rake db:seed```

Then run ```rails server``` and on your browser, go to ```localhost:3000``` and check our website!


## Built With

* Ruby on Rails - The web framework used
* devise - Ruby gem for user authenticiation
* HTML/CSS/JavaScript/Bootstrap - Web design


## Models

**Course**
```
- name (string)
```
**GSI**
```
- name(string)
- course(string): can have many courses
```
**Review**
```
- content(text)
- clarity (integer): 1-10
- attitude (integer): 1-10
- problem (integer): 1-10; score of how much does the GSI focus on problem solving
- concept (interger): 1-10 score of how much does the GSI focus on explaining concepts
- gsi_id (integer): unique
- user_id (integer)
```
**User**
```
- username (string)
- email(string) 
- reviews (string) many reviews for different GSIs
- user-id (integer)
- upvote
```


## Features


- Users must sign up with an email (verification email will be sent) to leave a review. However, users can look for reviews without signing in/up.
- Users can rate their GSIs and leave a comment, and also edit or delete their rate/comment
- Users can search by GSI name, read the reviews, and upvote whether a review was helpful or not helpful
		
        
        
## Division of Labor

- Dave Kwon & Mesut Yang: Make structural design of the website (back-end, made models and associations, made seeds)
- Shangjun Jiang & Meejin Choi: Make user interface design of the website (front-end, HTML/CSS/JavaScript/bootstrap)

## Authors

* Dave Kwon
* Mesut Yang
* Shangjun Jiang
* Meejin Choi
