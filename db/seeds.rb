# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require "faker"
include Faker

# 100.times do 
#   todo_list = TodoList.create(
#     :title => "#{Name.name}",
#     :description => Lorem.paragraphs.join("<br/>")
#   )
# end

100.times do 
  todo_item = TodoItem.create(
    :content => Lorem.word,
    :todo_list_id => rand(1..100)
  )
end
