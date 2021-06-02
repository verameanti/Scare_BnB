# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

User.destroy_all
Ghost.destroy_all

puts "Creating users.."
user1 = User.create!(first_name:"Vera", last_name:"Meanti", email:"verameanti@email.com", password:"123456")
user2 = User.create!(first_name:"Laurence", last_name:"Sainsbury", email:"laurence@email.com", password:"123456")
user3 = User.create!(first_name:"Oli", last_name:"Kyte", email:"oli@email.com", password:"123456")
user4 = User.create!(first_name:"Tiana", last_name:"Milanovich", email:"tiana@email.com", password:"123456")
user5 = User.create!(first_name:"James", last_name:"Price", email:"james@email.com", password:"123456")
user6 = User.create!(first_name:"Beverly", last_name:"Chan", email:"beverly@email.com", password:"123456")
user7 = User.create!(first_name:"Jennifer", last_name:"Carlyle", email:"jennifer@email.com", password:"123456")
user8 = User.create!(first_name:"Hector", last_name:"Dyer", email:"hector@email.com", password:"123456")
user9 = User.create!(first_name:"Felix", last_name:"Altenburg", email:"felix@email.com", password:"123456")
user10 = User.create!(first_name:"Marcus", last_name:"Allen", email:"marcus@email.com", password:"123456")
user11 = User.create!(first_name:"Spencer", last_name:"Ryton", email:"spencer@email.com", password:"123456")
user12 = User.create!(first_name:"Chloé", last_name:"Avenas", email:"chloe@email.com", password:"123456")

puts "Finished creating users.."

# file1 = URI.open('')
# file2 = URI.open('')
# file3 = URI.open('')
# file4 = URI.open('')
# file5 = URI.open('')
# file6 = URI.open('')
# file7 = URI.open('')
# file8 = URI.open('')
# file9 = URI.open('')
file10 = URI.open('https://res.cloudinary.com/dbe4hul9k/image/upload/v1622630914/Old_man_withers_zppcun.jpg')
# file11 = URI.open('')
# file12 = URI.open('')

puts "Creating ghosts.."
# ghost1 = Ghost.new(name:"Lady Button", era:"Victorian", category:"scary", description:"A classic poltergeist, perfect for first time hauntees.", price: 10, user: user1)
# ghost2 = Ghost.new(name:"James Moran", era:"Modern", category:"grumpy", description:"For causing mild annoyance there's no-one finer, perfect for petty revenge", price: 3, user: user2)
# ghost3 = Ghost.new(name:"Caspar", era:"1950s", category:"friendly", description:"A child-friendly boy ghost who can act as a good companion", price: 5, user: user3)
# ghost4 = Ghost.new(name:"The Captain", era:"World War 2", category:"grumpy", description:"If you're a history buff, there's no-one you'd rather have at your next seance", price: 10, user: user4)
# ghost5 = Ghost.new(name:"Bill the Bard", era:"Romantic", category:"friendly", description:"Want to woo the person of your dreams? This poet has more than one lifetime of advice!", price: 10, user: user5)
# ghost6 = Ghost.new(name:"Scary Mary", era:"Stuart", category:"scary", description:"Was she truly a witch? You decide! This ghost is truly terrifying", price: 10, user: user6)
# ghost7 = Ghost.new(name:"Pretty Boy Lloyd", era:"1920s", category:"jovial", description:"This former gangster has a story or 2! WARNING: Will not speak to law enforcement", price: 20, user: user7)
# ghost8 = Ghost.new(name:"Sir Hansel", era:"Medieval", category:"scary", description:"A crusader at heart who can inhabit ANY suit of armour, great for spicing up a costume party", price: 5, user: user8)
# ghost9 = Ghost.new(name:"Bobo the Clown", era:"1950s", category:"scary", description:"Not for the faint of heart, this ghost is the scariest around", price: 50, user: user9)
ghost10 = Ghost.new(name:"Old Man Withers", era:"World War 2", category:"friendly", description:"In need of some fatherly advice? The former Naval officer is perfect for you", price: 35, user: user10)
ghost10.photos.attach(io: file10, filename: 'file10.png', content_type: 'image/png')
ghost10.save!
# ghost11 = Ghost.new(name:"Captain Blackbeard", era:"Colonial", category:"jovial", description:"A jolly pirate captain, will be the death and soul of any party!", price: 25, user: user11)
# ghost12 = Ghost.new(name:"Nicolas Hinault", era:"Modern", category:"scary", description:"After he won the Tour de France his heart exploded, perfect for haunting motor-heads!", price: 30, user: user12)
puts "Finished creating ghosts.."
