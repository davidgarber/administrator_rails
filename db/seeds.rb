# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email:"david@david.com", password:"12345678", role:"admin", admin: true)

Category.create(name:"Ruby", description:"A dynamic, open source programming language with a focus on simplicity and productivity. It has an elegant syntax that is natural to read and easy to write.")
Category.create(name:"Javascript", description:"A lightweight, interpreted, object-oriented language with first-class functions, and is best known as the scripting language for Web pages, but it's used in many non-browser environments as well. It is a prototype-based, multi-paradigm scripting language that is dynamic, and supports object-oriented, imperative, and functional programming styles.")
Category.create(name:"Rails", description:"A web application framework written in Ruby under MIT License. Rails is a model–view–controller (MVC) framework, providing default structures for a database, a web service, and web pages.")

Project.create(title:"Flashcards", detail:"Flashcards prepares one for a technical interview by showing technical question flashcards and the user can discard ones they've learned. Created with David Abel, Steven Francisco and Cory Ribson.", url:"http://immense-temple-5333.herokuapp.com/", category_id: 1)
Project.create(title:"Pizza Company", detail:"Allows a user to select the size, topping and quantity of pizza(s) and it will show the price.", url:"http://pizzacompany.site44.com/", category_id: 2)
Project.create(title:"Find and Replace", detail:"Allows the user to enter a phrase followed by a word to find then a word to replace and it will replace that word.", url:"http://findandreplace.site44.com/", category_id: 2)
Project.create(title:"Portfolio", detail:"This site displays my personal information, the languages I know and displays projects I have created.", url:"https://shielded-beach-3319.herokuapp.com/", category_id: 3)

Reference.create(name: "David Garber", phone:"(310) 429-6205")
