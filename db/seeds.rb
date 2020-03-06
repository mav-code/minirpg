# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

####### TEST DATA ####################################################

# tome = Junk.create(name: "Tome of Oa", description: "A glowing green book", image_url: "none")
# twigs = Junk.create(name: "Loose Twigs", description: "A few small twigs", image_url: "none")
# lenses = Junk.create(name: "Contact Lenses", description: "They help you see, maybe", image_url: "none")

# CharacterJunk.create(character_id: demiurge.id, junk_id: tome.id)

####### REAL DATA? ##################################################
####### CLASS TREE ##################################################

none = Job.create(name: nil)
nerd = Job.create(name: "Antisocial Loser", parent_id: none.id)
    gamer = Job.create(name: "Gamer", parent_id: nerd.id)
        mtg = Job.create(name: "Magic: The Gathering Player", parent_id: gamer.id)
    bookworm = Job.create(name: "Bookworm", parent_id: nerd.id)
        potter = Job.create(name: "Wizard School Student", parent_id: bookworm.id)
        wiccan = Job.create(name: "Wiccan", parent_id: bookworm.id)
    actor = Job.create(name: "Theater Kid", parent_id: nerd.id)
        stage = Job.create(name: "Stage Magician", parent_id: actor.id)
        fortune = Job.create(name: "Fortune Teller", parent_id: actor.id)
            sooth = Job.create(name: "Soothsayer", parent_id: fortune.id)
                druid = Job.create(name: "Druid", parent_id: sooth.id)
                    shaman = Job.create(name: "Shaman", parent_id: druid.id)

####### STORYLINE FEVER #############################################
####### NERD HOOKS ##################################################

start = Hook.create(
    job_id: none.id,
    prompt: "Begin your quest", 
    description: "You start life as every wizard does: As a pimple-faced little dork.", 
    result: {newjob: nerd}
    )

    Hook.create(
        job_id: nerd.id,
        prompt: "Try and mediate your self-worth somehow", 
        description: "You find your solace in video games. Behind the screen, you can showcase your mental superiority, and pick up some breadcrumbs of social interaction. <br><br> You have become a <b>Gamer</b>.", 
        result: {newjob: gamer}
        )

    Hook.create(
        job_id: nerd.id,
        prompt: "Bury yourself in a book", 
        description: "You retreat from our gray world into a vibrant black-and-white wordscape. <br><br>You have become a <b>Bookworm</b>.", 
        result: {newjob: bookworm}
        )

    Hook.create(
        job_id: nerd.id,
        prompt: "Try and socialize", 
        description: "It's not as hard for a geek to make friends as some might think. But is it worth the cost?.. <br><br>You have become a <b>Theater Kid</b>.", 
        result: {newjob: actor}
        )
        
####### GAMER & BOOKWORM HOOKS ######################################

Hook.create(
    job_id: gamer.id,
    prompt: "Have a fit of loneliness", 
    description: "Eventually, maybe during a reboot, you have to come face-to-face with your bloated and dead-eyed reflection in the monitor. The hundreth time that happens, you snap. You need a hobby in the physical world, and thanks to your time playing Hearthstone, you know just where to find it. <br><br>You have become a <b>Magic: The Gathering Player</b>. Lose one hundred dollars.", 
    result: {newjob: mtg, wallet: -100}
    )
Hook.create(
    job_id: bookworm.id,
    prompt: "Do your chores", 
    description: "Your loathsome stepfamily has gone out for ice cream and left you with a laundry-list of tasks. You get on your hands and knees and start rubbing and scrubbing. But what's this? An envelope jammed in a doorhinge? Who's this for? <br> <i> Dearest whomever, after a rigorous Google search process for alienated orphans in our area, <b>YOU</b> have been selected to attend the Urban Fantasy School of Tropes and Eurowizardry. Pack your meager belongings, you start today! </i> <br> Wow! Just the sort of escape hatch from reality you'd been pining for! <br><br> Congratulations, you've become a <b>Student at a Wizard School.</b>", 
    result: {newjob: potter}
    )
Hook.create(
    job_id: bookworm.id,
    prompt: "Take an AP literature class", 
    description: "Yes! The moment you've been waiting for! You can finally take AP Literature, and hopefully meet some other cool, sensitive, thoughtful souls to fall in love with, make a real connection, get whisked off into an incredible intellectual world! <br><br> and indeed you do. You have become a <b>Wiccan</b>. ", 
    result: {newjob: wiccan}
    )
    
####### THEATER KID HOOKS ###########################################

Hook.create(
    job_id: actor.id,
    prompt: "Come out of your cage", 
    description: "Joining the theater club has done wonders for your self-esteem! You're really starting to spread your wings socially, and you've gained a love of performance. It's time to leave your nerdy days behi -- <br><br> Ah fuck, you've become a <b>Stage Magician</b>.", 
    result: {newjob: stage}
)

Hook.create(
    job_id: actor.id,
    prompt: "Visit your Grandmother", 
    description: "You take the train out to Bay Ridge or wherever your grandma lives. She's made dinner, too much of course, and you report on your life as she puts plates after plate on the table. <br> <br> After dinner, she makes some Turkish coffee for the two of you. Maybe your family is Turkish, I don't know. As usual, after you've drank your coffee, she instructs you to place the cup face-down on its plate and wait until the bottom is cool to the touch. At this point she flips it over and, without letting you see the mystic patterns created by dribbling coffee grounds, reads your fortune. <br> <br> Your grandmother has done this several times throughout your life, but this time you observe the spectacle with a different eye -- a performer's eye. You notice grandma's posturing, glances, and shifting tones and how they sell the piece to you, the audience. And you notice how all the insights are either completely vague, or based on what she intimately knows about you. <br> <br> With your theater instincts, you can see that this would be a cool party trick. You buy a tarot deck and become a <b>Fortune Teller</b>.", 
    result: {newjob: fortune}
)

    Hook.create(
        job_id: fortune.id,
        prompt: "Get really into fortune telling", 
        description: "You parade your skills all around town, you little street punk, you. One day while you're reading the entrails of a burst rat for the Skateboarder King of Union Square, you realize that this has become a calling. You have become a <b>Soothsayer</b>.", 
        result: {newjob: sooth}
    )

    Hook.create(
        job_id: sooth.id,
        prompt: "Get off the grid", 
        description: "You've been a wandering soothsayer for a while now -- visiting the city's leylines to take stock of them, providing guidance to those in need, probably pushing a shopping cart full of salvaged textiles around. It's time you made the leap into full-blown forest woman. You set up a hidden shelter in Prospect Park and spend your time harvesting certain roots and leaves to mash into powerful tinctures. <br> <br> You have becomes a <b>Druid</b>", 
        result: {newjob: druid}
    )

    Hook.create(
        job_id: druid.id,
        prompt: "Resocialize", 
        description: "As the harvest, all man's activities are cyclical, and we will find ourselves in the same place time and again. Your druidic work is important -- but it is lonely. <br> <br> However, you are not the only vagrant living in or around this park, and eventually, your interactions with those others becomes regular and interdependant enough to call yourselves a community. You have become a <b> Shaman </b>", 
        result: {newjob: shaman}
    )

######## DUMMY DATA ######################################################

dungeonmaster = User.create(username: "gary", password_digest: "gygax")
demiurge = Character.create(name: "Michael", user_id: dungeonmaster.id)

# warrior = Job.create(name: "Warrior")
# knight = Job.create(name: "Knight", parent_id: warrior.id)
# paladin = Job.create(name: "Paladin", parent_id: knight.id)

CharacterJob.create(character_id: demiurge.id, job_id: nerd.id)

