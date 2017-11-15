# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Profile.destroy_all
TodoList.destroy_all
TodoItem.destroy_all

today = Date.today
due_date = today + 1.year

User.create!([
	{username: "Fiorina", password_digest: "123abc"},
	{username: "Trump", password_digest: "abc123"},
	{username: "Carson", password_digest: "aabb"},
	{username: "Clinton", password_digest: "bbaa"}
])

Fiorina = User.find_by username: "Fiorina"
Fiorina.create_profile gender: "female", birth_year: 1954,
	first_name: "Carly", last_name: "Fiorina"

Trump = User.find_by username: "Trump"
Trump.create_profile gender: "male", birth_year: 1946,
	first_name: "Donald", last_name: "Trump"

Carson = User.find_by username: "Carson"
Carson.create_profile gender: "male", birth_year: 1951,
	first_name: "Ben", last_name: "Carson"

Clinton = User.find_by username: "Clinton"
Clinton.create_profile gender: "female", birth_year: 1947,
	first_name: "Hillary", last_name: "Clinton"

User.all.each do |user|
	user.todo_lists.create!(list_name: user.username, list_due_date: due_date)
end

TodoList.all.each do |todo_list|
	5.times do
		todo_list.todo_items.create!(due_date: due_date, title: "Title", description: "Description")
	end
end