Student.destroy_all
Duck.destroy_all 

15.times do
  Student.create(name: Faker::Name.name, mod: rand(1..5))
end

5.times do
  Duck.create(name: Faker::Creature::Dog.name, description: Faker::Creature::Dog.breed, student_id: Student.all.sample.id)
end

5.times do
  Duck.create(name: Faker::Creature::Dog.name, description: Faker::Creature::Dog.breed)
end


