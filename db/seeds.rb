# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@admin = User.create!(username: 'admin', email: 'admin@admin.com', password: 'admin123')

@tester = User.create!(username: 'tester', email: 'tester@tester.com', password: 'tester123')

puts "#{User.count} users created!"

Topic.create!(topic_name: 'Dogs are superior to cats', user_id: @admin)
Topic.create!(topic_name: 'Homework should be banned', user_id: @admin)
Topic.create!(topic_name: 'Summer is better than winter', user_id: @admin)
Topic.create!(topic_name: 'Mondays are the worst day', user_id: @admin)
Topic.create!(topic_name: 'Ruby is the best programming language', user_id: @admin)

puts "#{Topic.count} topics created!"
