# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Interest.destroy_all
User.destroy_all
Meetup.destroy_all
Like.destroy_all
Connection.destroy_all


# Interest.create(name: "Pokemon")

interests = [
  {name: "Dungeons & Dragons"},
  {name: "Raspberry Pi"},
  {name: "Artifical Intelligence"},
  {name: "Science Fiction"}, 
  {name: "Ferret Racing"}, 
  {name: "Netflix 'n' Chill"}, 
  {name: "Streaking"}, 
  {name: "Tying Knots"}, 
  {name: "Pokemon"}, 
  {name: "Bugs"}, 
  {name: "Astronomy"}, 
  {name: "Farmville"}, 
  {name: "Witch Craft"}, 
  {name: "Harry Potter"}, 
  {name: "Sports"}, 
  {name: "Planking"},
  {name: "Hacking"},
  {name: "Secret Societies"}
]

Interest.create(interests)

 User.create(first_name: "Darlene", last_name: "Alderson", email: "D.Alderson@robot.com", password: "123", tagline: "Honestly, not looking for anything. One night only, don't bug me. I'm too busy for any drama",age: 28, picture: "https://static1.squarespace.com/static/55cab5cbe4b0eeb918e4d845/t/59e22cf7197aea8e99b522d7/1507994879933/?format=1000w", bio: "Hacker and Engineer. - Corporate greed is a trickle down desire that reaches even the bottom of the food chain." )

 User.create(first_name: "Elliot", last_name:"Alderson", email: "E.Alderson@robot.com", password: "123", tagline: "Not sure why I'm on here. Maybe i'll hack your accounts!!",age: 30, picture: "https://www.geek.com/wp-content/uploads/2016/07/mr_robot_elliot_01-625x350.jpg ", bio: "CyberSecurity Engineer. Best in the business." )

 User.create(first_name: "Howard", last_name:"Wolowitz", email: "howard@bigbangtheory.com", password: "123", tagline: "Ladies.. I'm an astronaut. Sexy right?",age: 34, picture: "https://i.pinimg.com/originals/43/b1/d6/43b1d6e87417aa6287602dd9e0cb6f4a.jpg", bio: "Did I mention I went to space?" )

 User.create(first_name: "Boris", last_name:"Johnson", email: "boris@johnson.com", password: "123", tagline: "My chances of being PM are about as good as the chances of finding Elvis on Mars, or my being reincarnated as an olive.",age: 60, picture: "https://i.pinimg.com/originals/43/b1/d6/43b1d6e87417aa6287602dd9e0cb6f4a.jpg", bio: "If you don't know who I am. Then don't bother matching." )

 User.create(first_name: "Donald", last_name:"Trump", email: "irule@trumpworld.com", password: "123", tagline: "To be blunt, people would vote for me. They just would. Why? Maybe because I'm so good looking.", age: 70, picture: "
 https://images.axios.com/ocjo_v3Q4mfL756UPAw7ho6uN5o=/0x71:4291x2485/1920x1080/2019/01/05/1546707506731.jpg", bio: "I rule America. Who wouldn't want some if this ass?" )

 User.create(first_name: "Felicity", last_name:"Smoak", email: "felicity@queenindustry.com", password: "123", tagline: "I hate mysteries, they bug me. They need to be solved",age: 30, picture: "https://img.cinemablend.com/filter:scale/cb/9/4/1/7/f/e/9417fe2f9ef0a597844c31108de1298ab8dd1a836c2c466342fda6928a7181e8.jpg?mw=600", bio: "Founder and CEO of Smoak Technologies. Spend my nights hacking systems. Just for fun ofcourse... Nothing else." )

 User.create(first_name: "Margaret", last_name:"Hamilton", email: "margaret@mit.com", password: "123", tagline: "My chances of being PM are about as good as the chances of finding Elvis on Mars, or my being reincarnated as an olive.",age: 30, picture: "https://assets.weforum.org/editor/large_D1lr9X_g8tIju0WftrPhqgzuqGp49FwM41UXi16bboQ.png ", bio: "Director of software engineering for the project that wrote the code for the Apollo Guide Computer (AGC). Developed at the MIT Instrumentation Laboratory for the Apollo 11 mission, we literally had to start from scratch." )

 User.create(first_name: "Mark", last_name:"Zuckerberg", email: "boris@johnson.com", password: "123", tagline: "I don't like people. But I need someone to cuddle up to at night. Pick me!?",age: 35, picture: "https://wearesocial-net.s3.amazonaws.com/sg/wp-content/uploads/sites/9/2017/05/f8-facebook-mark-zuckerberg-0112.jpg", bio: "Checking out the competition.. Maybe i'll create my own dating app. This one sucks." )

 User.create(first_name: "Sheldon", last_name:"Cooper", email: "sheldon@bazinga.com", password: "123", tagline: "People say you can't live without love, I think Oxygen is more important",age: 39, picture: "http://papers.co/wallpaper/papers.co-hb28-wallpaper-sheldon-cooper-big-bang-theory-bazinga-34-iphone6-plus-wallpaper.jpg", bio: "IQ: 187. Atheist. Theoretical Physicist." )

 User.create(first_name: "Romesh", last_name:"Ranganathan", email: "romesh@comedyclub.com", password: "123", tagline: "Looking for something special. Needs to laugh at all my jokes",age: 39, picture: "https://www.theargus.co.uk/resources/images/8809779?type=responsive-gallery-fullscreen", bio: "Comedian" )

 User.create(first_name: "Raj", last_name:"Koothrappali", email: "raj@koothrappali.com", password: "123", tagline: "I don't need science to win your heart. I have my family's wealth for that",age: 39, picture: "https://pbs.twimg.com/profile_images/566327713707749376/KtScs-wm_400x400.jpeg", bio: "I'm an astrophysicist" )

 User.create(first_name: "Amy", last_name:"Farrah Fowler", email: "amy@bbt.com", password: "123", tagline: "Match me if anyone has the same IQ as me.",age: 35, picture: "https://www.thetvdb.com/banners/actors/325461.jpg", bio: "I'm a neurobiologist." )

User.create(first_name: Faker::Name.first_name, last_name: "Anon", email: Faker::Internet.email, password:"123", tagline: "Patience is a virtue and the best things in life are worth waiting for.", age: 25, picture: "https://qph.fs.quoracdn.net/main-qimg-5ebb9e42dfb5f0fe512845df16b5004f")



 Meetup.create(description: "Go to a bar")
 Meetup.create(description: "Mini Golf")
 Meetup.create(description: "Rock Climbing")
 Meetup.create(description: "Attend a comedy night")
 Meetup.create(description: "See a film under the stars * ")
 Meetup.create(description: "Go to a Theme Park!")
 Meetup.create(description: "Lets go dine at a restaurant, like normal people?")
 Meetup.create(description: "Visit an art gallery like sophisticated adults")
 Meetup.create(description: "Lets go ice skating!")
 Meetup.create(description: "Take a picnic to a park")
 Meetup.create(description: "I can't cook. Lets take a cooking class together")
 Meetup.create(description: "Go to a HACKATHON! ")
 Meetup.create(description: "Lets go to an arcade")
 Meetup.create(description: "Lets go for a bike ride")
 Meetup.create(description: "Lets do a Live Action Roleplay")
 Meetup.create(description: "Laser Tag!")
 Meetup.create(description: "Geocaching mission ")
 Meetup.create(description: "Go on a Ghost Tour!")
 Meetup.create(description: "Go to a Science Museum")
 Meetup.create(description: "Group painting class")
 Meetup.create(description: "Driving range")
 Meetup.create(description: "Go do some archery")
 Meetup.create(description: "Paddleboarding anyone?")
 Meetup.create(description: "Visit a medieval/renaissance fair")
 Meetup.create(description: "Boardgame Night!")


20.times do
  user = User.all.sample
  interest = Interest.all.sample
  like = Like.create(heart: true, comment: "Can't live with it, can't live without it. R.I.P Life", user: user, interest: interest)
end

20.times do
  Connection.create(companion: User.all.sample, user: User.all.sample, meetup: Meetup.all.sample)
end

p "I have now seeded."