# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Form.create(title: 'Customer Feedback', description: 'Help us improve our service')
Form.first.questions.create(content: 'How satisfied are you with our service?', question_type: 'rating')