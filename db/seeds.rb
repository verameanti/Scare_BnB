# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

User.destroy_all
Ghost.destroljo

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
user13 = User.create!(first_name:"Veni", last_name:"Aljo", email:"veni@email.com", password:"123456")
user14 = User.create!(first_name:"Beatriz", last_name:"Galindo", email:"beatriz@email.com", password:"123456")

puts "Finished creating users.."

file1 = URI.open('https://res.cloudinary.com/dbe4hul9k/image/upload/v1622630913/LadyButton_htjcr5.jpg')
file2 = URI.open('https://res.cloudinary.com/dbe4hul9k/image/upload/v1622630913/James_Moran_Ghost_mt2qik.jpg')
file3 = URI.open('https://res.cloudinary.com/dbe4hul9k/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1622630913/Caspar_nvmuxb.jpg')
file4 = URI.open('https://res.cloudinary.com/dbe4hul9k/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1622630913/the_captain_irb4yc.jpg')
file5 = URI.open('https://res.cloudinary.com/dbe4hul9k/image/upload/v1622630913/Bill_the_Bard_fyolnm.jpg')
file6 = URI.open('https://res.cloudinary.com/dbe4hul9k/image/upload/v1622630913/Scary_Mary_clhzjl.jpg')
file7 = URI.open('https://res.cloudinary.com/dbe4hul9k/image/upload/v1622630913/pretty_boy_lloyd_tbovax.jpg')
file8 = URI.open('https://res.cloudinary.com/dbe4hul9k/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1622630913/Sir_Hansel_kdpmrq.jpg')
file9 = URI.open('https://res.cloudinary.com/dbe4hul9k/image/upload/v1622630913/bobo_the_clown_b7hln4.jpg')
file10 = URI.open('https://res.cloudinary.com/dbe4hul9k/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1622630914/Old_man_withers_zppcun.jpg')
file11 = URI.open('https://res.cloudinary.com/dbe4hul9k/image/upload/v1622637345/h6r8vqzuxwby77fjymbclieiyzee.png')
file12 = URI.open('https://res.cloudinary.com/dbe4hul9k/image/upload/v1622630913/Cyclist_ghost_vudzdz.jpg')
file13 = URI.open('https://res.cloudinary.com/dbe4hul9k/image/upload/v1622800866/Trevor_a48qo7.jpg')
file14 = URI.open('https://res.cloudinary.com/dbe4hul9k/image/upload/v1622800866/trevor-closeup_prmuhc.jpg')
file15 = URI.open('https://res.cloudinary.com/dbe4hul9k/image/upload/v1622800866/trevor-otherside_higl5u.png')
file16 = URI.open('https://res.cloudinary.com/dbe4hul9k/image/upload/v1622752233/hannibal_hector1_tas7xh.jpg')
file17 = URI.open('https://res.cloudinary.com/dbe4hul9k/image/upload/v1622752233/Hannibal-hector2_m2aepp.jpg')
file18 = URI.open('https://res.cloudinary.com/dbe4hul9k/image/upload/v1622802744/hannibal-hector3_itkolx.jpg')

puts "Creating ghosts.."
ghost1 = Ghost.new(name:"Lady Button", era:"Victorian", category:"Scary", description:"A classic poltergeist, perfect for first time hauntees.", price: 10, user: user1)
ghost1.photos.attach(io: file1, filename: 'file1.png', content_type: 'image/png')
ghost1.save!
ghost2 = Ghost.new(name:"Old Hamlet", era:"Romantic", category:"Grumpy", description:"For causing mild annoyance there's no-one finer, perfect for petty revenge", price: 3, user: user2)
ghost2.photos.attach(io: file2, filename: 'file2.png', content_type: 'image/png')
ghost2.save!
ghost3 = Ghost.new(name:"Caspar", era:"1950s", category:"Friendly", description:"A child-friendly boy ghost who can act as a good companion", price: 5, user: user3)
ghost3.photos.attach(io: file3, filename: 'file3.png', content_type: 'image/png')
ghost3.save!
ghost4 = Ghost.new(name:"The Captain", era:"World War 2", category:"Grumpy", description:"If you're a history buff, there's no-one you'd rather have at your next seance", price: 10, user: user4)
ghost4.photos.attach(io: file4, filename: 'file4.png', content_type: 'image/png')
ghost4.save!
ghost5 = Ghost.new(name:"Bill the Bard", era:"Romantic", category:"Friendly", description:"Want to woo the person of your dreams? This poet has more than one lifetime of advice!", price: 10, user: user5)
ghost5.photos.attach(io: file5, filename: 'file5.png', content_type: 'image/png')
ghost5.save!
ghost6 = Ghost.new(name:"Scary Mary", era:"Stuart", category:"Scary", description:"Was she truly a witch? You decide! This ghost is truly terrifying", price: 10, user: user6)
ghost6.photos.attach(io: file6, filename: 'file6.png', content_type: 'image/png')
ghost6.save!
ghost7 = Ghost.new(name:"Pretty Boy Lloyd", era:"1920s", category:"Jovial", description:"This former gangster has a story or 2! WARNING: Will not speak to law enforcement", price: 20, user: user7)
ghost7.photos.attach(io: file7, filename: 'file7.png', content_type: 'image/png')
ghost7.save!
ghost8 = Ghost.new(name:"Sir Hansel", era:"Medieval", category:"Scary", description:"A crusader at heart who can inhabit ANY suit of armour, great for spicing up a costume party", price: 5, user: user8)
ghost8.photos.attach(io: file8, filename: 'file8.png', content_type: 'image/png')
ghost8.save!
ghost9 = Ghost.new(name:"Bobo the Clown", era:"1950s", category:"Scary", description:"Not for the faint of heart, this ghost is the scariest around", price: 50, user: user9)
ghost9.photos.attach(io: file9, filename: 'file9.png', content_type: 'image/png')
ghost9.save!
ghost10 = Ghost.new(name:"Old Man Withers", era:"World War 2", category:"Friendly", description:"In need of some fatherly advice? The former Naval officer is perfect for you", price: 35, user: user10)
ghost10.photos.attach(io: file10, filename: 'file10.png', content_type: 'image/png')
ghost10.save!
ghost11 = Ghost.new(name:"Captain Blackbeard", era:"Colonial", category:"Jovial", description:"A jolly pirate captain, will be the death and soul of any party!", price: 25, user: user11)
ghost11.photos.attach(io: file11, filename: 'file11.png', content_type: 'image/png')
ghost11.save!
ghost12 = Ghost.new(name:"Nicolas Hinault", era:"Modern", category:"Scary", description:"After he won the Tour de France his heart exploded, perfect for haunting motor-heads!", price: 25, user: user12)
ghost12.photos.attach(io: file12, filename: 'file12.png', content_type: 'image/png')
ghost12.save!
ghost13 = Ghost.new(name:"Trevor", era:"1920s", category:"Grumpy", description:"A haunted doll that moves around when you're not looking. A prankster, a creep & might just kill you in your sleep.", price: 39, user: user13)
ghost13.photos.attach(io: file13, filename: 'file13.png', content_type: 'image/png')
ghost13.photos.attach(io: file14, filename: 'file14.png', content_type: 'image/png')
ghost13.photos.attach(io: file15, filename: 'file15.png', content_type: 'image/png')
ghost13.save!
ghost14 = Ghost.new(name:"Hannibal Hector", era:"Modern", category:"Scary", description:"This former foodie has a taste for the finer things. Known to love throwing priceless artefacts around the room. Scary!", price: 55, user: user14)
ghost14.photos.attach(io: file16, filename: 'file16.png', content_type: 'image/png')
ghost14.photos.attach(io: file17, filename: 'file17.png', content_type: 'image/png')
ghost14.photos.attach(io: file18, filename: 'file18.png', content_type: 'image/png')
ghost14.save!
puts "Finished creating ghosts.."
