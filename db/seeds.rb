# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


dungeonmaster = User.create(username: "gary", password_digest: "gygax")

demiurge = Character.create(name: "Michael", user_id: dungeonmaster.id)

warrior = Job.create(name: "Warrior")
knight = Job.create(name: "Knight", parent_id: warrior.id)
paladin = Job.create(name: "Paladin", parent_id: knight.id)

CharacterJob.create(character_id: demiurge.id, job_id: knight.id)

tome = Junk.create(name: "Tome of Oa", description: "A glowing green book", image_url: "none")
twigs = Junk.create(name: "Loose Twigs", description: "A few small twigs", image_url: "none")
lenses = Junk.create(name: "Contact Lenses", description: "They help you see, maybe", image_url: "none")

CharacterJunk.create(character_id: demiurge.id, junk_id: tome.id)


# test1 = Character.create(name: "honk honk")
# test2 = Character.create(name: "bark bark")