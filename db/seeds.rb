# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
10.times do
  User.create(first_name: Faker::Pokemon.name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
end

15.times do
  Article.create(user_id: User.all.sample.id, title: 'balabla', content: 'tototto' )
end

5.times do
  Category.create(name: Faker::Pokemon.name)
end

15.times do
  Comment.create(user_id: User.all.sample.id, article_id: Article.all.sample.id, content: Faker::HowIMetYourMother.quote )
end

15.times do
  Like.create(user_id: User.all.sample.id, article_id: Article.all.sample.id)
end

Article.all.each do |article|
  article.category_id = Category.all.sample.id
  article.save
end
