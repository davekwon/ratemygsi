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

In the directory of your choice, run ```git clone https://github.com/davekwon/ratemygsi.git``` and ```cd ratemygsi```

Run ```bundle install```,  ```rake db:migrate db:seed``` to set up the gem and database

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
- reviews (string): many reviews for different GSIs
- user-id (integer)
- upvote
```


## Features


- Users can browse the reviews without signing in / signing up.
- Users must sign in or sign up with username and email to leave a review. If attemped to do so without signing in, they will be directed to the sign-in page.
- Once signed in, users can rate their GSIs and leave a comment
- Users can look up by GSI name on course page, read the reviews, and upvote whether a review was helpful
- Each user can only vote on a particular review once as the upvote model keep track of uniquness
		
        
        
## Division of Labor

- Dave Kwon & Mesut Yang: Make structural design of the website (back-end, made models and associations, made seeds)
- Shangjun Jiang & Meejin Choi: Make user interface design of the website (front-end, HTML/CSS/JavaScript/bootstrap)

## Authors

* Dave Kwon
* Mesut Yang
* Shangjun Jiang
* Meejin Choi
