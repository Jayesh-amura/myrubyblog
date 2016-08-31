# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

category = ["News","Tutorials","Programming","Design"]


category.each do |c|
  Category.create(name: c)
end

posts = [["our first posts","the 1st sample text",1],
        ["our second posts","the 2nd sample text",2],
        ["our third posts","the 3rd sample text",2],
        ["our fourth posts","the 4th sample text",1],
        ["our fifth posts","the 5th sample text",3]]


posts.each do |p|
  Post.create(title: p[0], body: p[1], category_id: p[2])
end



