# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Creating Industries"

industries = []
15.times do
  industries << Faker::Job.field
end

industries.uniq.each do |industry|
  Industry.create({
    industry:  industry
  })
end

puts "Create Jobs"

(Industry.all.length * 2).times do
  Job.create({
    job_title: Faker::Job.title,
    industry_id: rand(10) + 1
  })
end

puts "Create hobby"

hobbies = []
30.times do
  hobbies << Faker::Hobby.activity
end

hobbies.uniq.each do |hobby|
  Hobby.create(
    { hobby: hobby }
  )
end

puts "Create degree"

degrees = []
20.times do
  degrees << Faker::Educator.degree
end
degrees.uniq.each do |degree|
  Degree.create(
    {degree: degree}
  )
end

puts "Create Users"

emails = []
30.times do
  emails << Faker::Internet.email
end
emails.uniq.each do |email|
  User.create(
    {
      name: Faker::Name.name,
      email: email,
      description: Faker::Hipster.paragraph
    }
  )
end

puts "Create Jobs Hobbies and Degrees for Users"

users_quantity = User.count
degrees_quantity = Degree.count
hobbies_quantity = Hobby.count
jobs_quantity = Job.count

users_quantity.times do
  DegreesUser.create(
    {
      user_id: rand(users_quantity - 1) + 1,
      degree_id: rand(degrees_quantity - 1) + 1
    }
  )
  HobbiesUser.create(
    {
      user_id: rand(users_quantity - 1) + 1,
      hobby_id: rand(hobbies_quantity - 1) + 1,
    }
  )
  JobsUser.create(
    {
      user_id: rand(users_quantity - 1) + 1,
      job_id: rand(jobs_quantity - 1) + 1
    }
  )
end