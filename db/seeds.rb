# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Room.create(name: 'Music', description: 'Gimme sumadem funki tunes')
Room.create(name: 'Politics', description: "I'm right, you're wrong")
Room.create(name: 'Programming', description: "if (!programmer){pls leave}")

User.create(email: "qwer@qwer.com", password: "password")

Message.create(user_id: 1, room_id: 1, body: 'Skadoooosh')