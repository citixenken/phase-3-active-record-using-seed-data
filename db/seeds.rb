# Add a console message so we can see output when the seed file runs

puts "Seeding games..."

# generating 50 random games
50.times do 
    # create a game with random data
    Game.create(
        title: Faker::Game.title,
        genre: Faker::Game.genre,
        platform: Faker::Game.platform,
        price: rand(0..99) #random number between 0 and 99
    )
end

puts "Done seeding!"