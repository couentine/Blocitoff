require 'faker'

5.times do
    user = User.create!(
        email: Faker::Internet.email,
        password: Faker::Internet.password,
    )
end

users = User.all

10.times do |c|
    task = Task.create!(
        name: Faker::StarWars.character,
        user_id: (1..5),
        status: Faker::Boolean.boolean
    )
end


puts "Seed finished"
puts "#{Task.count} Wikis created"
puts "#{User.count} Users created"
