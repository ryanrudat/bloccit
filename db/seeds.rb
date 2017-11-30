require 'random_data'

50.times do

  #we use create! with a bang (!). Adding a ! instructs the method to raise an error
  #if there's a problem with the data we're seeding.
  #Using create without a bang could fail without warning, causing the error to surface later.
  Post.create!(

  #we use methods from a class that does not exist yet, RandomData,
  #that will create random strings for title and body.
  #Writing code for classes and methods that don't exist is known as "wishful coding"
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end
posts = Post.all

#we call times on an Integer (a number object).
#This will run a given block the specified number of times, which is 100 in this case.
#The end result of calling times is similar to that of a loop, but in this use-case,
#it is easier to read and thus more idiomatic.
100.times do
  Comment.create!(

#we call sample on the array returned by Post.all,
#in order to pick a random post to associate each comment with. sample returns a random element from the array
#every time it's called
  post: posts.sample,
  body: RandomData.random_paragraph
  )
end

50.times do
  Question.create!(
  title: RandomData.random_sentence,
  body: RandomData.random_paragraph,
  resolved: false
  )
end

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "#{Question.count} questions created"
