# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Article.delete_all
Article.create(title: "Sample Article 1", content: "This is the content of sample article 1 ", user_id: 1)
Article.create(title: "Sample Article 2", content: "This is the content of sample article 1 ", user_id: 1)
Article.create(title: "Sample Article 3", content: "This is the content of sample article 2 ", user_id: 2)
