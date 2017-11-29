# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Make Users


uArr = %w(tourist moejy0viiiiiv W4yneb0t TakanashiRikka Petr dotorya izrak Um_nik anta)
numUser = uArr.size
uArr.each do |name|
  User.create!({:email => name+"@gmail.com", :username => name, :password => "111111", :password_confirmation => "111111" })
end

# Make Courses
cArr = %w(CS61A CS61B CS170 CS189 Math110 EECS126 EECS127 CogSci131 IEOR266)
numCourse = cArr.size
cArr.each do |name|
  Course.create name: name
end


# Make GSIs
numGSI = 60
fnArr = %w(James Alex William Ethan Jacob Logan Andy Nikhil Emily Emma Kylie Julian Gianna Cora Mila Stella Scott Sinho)
fALen = fnArr.size
lnArr = %w(STANLEY JIANG OWENS KIM TODD CHEN DAVID MATSUKURA GREENE CHILBURG TESSMANN WALTER GUO HICKS PARK MONTGOMERY ABBOTT MILES CHEWI)
lALen = lnArr.size
(1..numGSI).step(1) do |n|
	name = fnArr[rand(fALen)] + " " + lnArr[rand(lALen)]
	Gsi.create! name: name, course: rand(numCourse), user_id: nil, course_id: nil
end

# Make Reviews
numReview= 120
rArr = ["OK, but would not recommend", "Better than the professor", "Among the best", "Concept well explained.", "Hash grader, watch out.", "Don't care about students", "Think students are waste of time", "Great GSI. Recommend to everyone.", "Lol", "Among the best GSI I have ever had", "Average, it is OK", "Not my style of GSI. Focusing too much on explaination", "Lots of problem coverage. Really like it!", "Pretty good. Would recommend", "Brought us candies in the last section. Lol", "Went to his office hours. REALLY HELPFUL!", "I changed my major because of this GSI.", "Lit this class on fire!", "Would take another class with this GSI again."]
rALen = rArr.size
(1..numReview).step(1) do |n|
	Review.create! content: rArr[rand(rALen)], clarity: rand(10), attitude: rand(10), problem: rand(10), concept: rand(10), gsi_id: 1 + rand(numGSI-1), user_id: 1 + rand(numUser-1)
end


# Make Upvotes
numUpvotes= 500
(1..numUpvotes).step(1) do |n|
	uv = Upvote.new review_id: 1 + rand(numReview-1), user_id: 1 + rand(numUser-1)
	uv.save
end

