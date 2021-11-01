# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first) 

require 'faker' 
PrivateMessage.destroy_all 

Gosssip.destroy_all 

User.destroy_all 

Tag.destroy_all 

TagGossip.destroy_all 

MessageUser.destroy_all


users=[]
10.times do 
    user=User.create(first_name:Faker::Name.name,last_name:Faker::Name.name,description:Faker::Lorem.paragraph,email:Faker::Internet.email,age:Faker::Number.number(digits:2));
    users.push(user)
end
cities=[]

10.times do |i|
    city=City.create(name:Faker::Address.city,zip_code:Faker::Address.building_number);
    users[i].city=city
    cities.push(city)
end  

gossips=[]
10.times do |index|
    gossip=Gosssip.create(title:Faker::Name.name,content:Faker::Lorem.paragraph,user:users[index])
    
    gossips.push(gossip)
end  
getGossips=Gosssip.all 

puts getGossips[0].user

tags=[]

10.times do 
    tag=Tag.create(title:Faker::Name.name)
    tags.push(tag)
end
tagGossips=[]

10.times do |i|
    tagGossip=TagGossip.create(tag:tags[i],gosssip:gossips[i])
    tagGossips.push(tagGossip)
end  

privateMessages=[]

10.times do |i|
    privateMessage=PrivateMessage.create(content:Faker::Lorem.words,user:users[i])
    privateMessages.push(privateMessage)
end  

privateMessages=PrivateMessage.all

puts privateMessages[0].user




messageUsers=[]
10.times do |i|

    messageUser=MessageUser.create(private_message:privateMessages[i],user:users[i])
    messageUsers.push(messageUser)

end


getMessageUser=MessageUser.all 









