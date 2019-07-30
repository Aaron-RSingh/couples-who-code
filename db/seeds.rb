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


Interest.create(name: "Pokemon")
User.create(first_name: "jimbo", last_name: "Pingo", username: "bimbo", password: "123", tagline: "Best world ever", age: 25, picture: "this is a picture", bio: "CHAT SHIT GET BANGED")
User.create(first_name: "jimbo", last_name: "Limbo", username: "KIMBO", password: "123", tagline: "Best world ever", age: 25, picture: "this is a picture", bio: "CHAT SHIT GET BANGED")
Meetup.create(description: "went to a bar")
Like.create(heart: true, comment: "Can't live with it, can't live without it. R.I.P Life", user_id: 1, interest_id: 1)
Connection.create(companion: 2, user_id: 1, meetup_id: 1)
Connection.create(companion: 1, user_id: 2, meetup_id: 1)

p "seed"