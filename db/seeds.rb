# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

100.times do
  Employee.create full_name: Faker::Name.name,
                  email: Faker::Internet.unique.email,
                  gender: (rand > 0.5 ? 'male' : 'female'),
                  salary: Faker::Number.between(10000, 50000)
end
