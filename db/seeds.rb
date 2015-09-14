20.times do
  Project.create(title: Faker::Company.name, body: Faker::Lorem.paragraph)
end
puts '### Created 20 new projects ###'
