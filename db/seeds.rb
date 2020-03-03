# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

warrior = Job.create(name: "Warrior")
knight = Job.create(name: "Knight", parent_id: warrior.id)
paladin = Job.create(name: "Paladin", parent_id: knight.id)

warrior.save
knight.save
paladin.save

test1 = Character.create(name: "honk honk")
test2 = Character.create(name: "bark bark")