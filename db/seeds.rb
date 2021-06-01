# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Ghost.destroy_all

puts "Creating users.."
user = User.create!(first_name:"Vera", last_name:"Meanti", email:"verameanti@gmail.com", password:"123456")
user2 = User.create!(first_name:"Laurence", last_name:"Sainsbury", email:"laurence@gmail.com", password:"123456")

puts "Finished creating users.."


puts "Creating ghosts.."
Ghost.create!(name:"Jill", era:"Victorian", category:"scary", description:"very scary", price: 10, user: user )


puts "Finished creating ghosts.."
