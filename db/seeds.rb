# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

user1 = User.create!(email: "emily@gmail.com", password: "password", first_name: "emily", last_name: "hansen")
user2 = User.create!(email: "chandler@gmail.com", password: "password", first_name: "chandler", last_name: "bing")
user3 = User.create!(email: "monica@gmail.com", password: "password", first_name: "monica", last_name: "gellar")
user4 = User.create!(email: "pheobe@gmail.com", password: "password", first_name: "pheobe", last_name: "buffay")
user5 = User.create!(email: "ross@gmail.com", password: "password", first_name: "ross", last_name: "gellar")
user6 = User.create!(email: "joey@gmail.com", password: "password", first_name: "joey", last_name: "tribianni")
user7 = User.create!(email: "rachel@gmail.com", password: "password", first_name: "rachel", last_name: "greene")

Event.destroy_all

event1 = Event.create!(
  title: "Visit this rock",
  lat: 40.738695,
  lng: -73.992742,
  start_date_time: "2017-10-01 18:30:00",
  end_date_time: "2017-10-01 23:30:00",
  image_content_type: "png",
  image_file_name: "image",
  image_file_size: 10,
  image_updated_at: "2017-10-01 18:30:00",
  description: "You'll have a great time!",
  price: 0,
  num_tickets: 50,
  organizer_id: 6,
  organizer_description: "I'm a great event organizer"
)

event2 = Event.create!(
  title: "Visit this tree",
  lat: 40.738695,
  lng: -73.992742,
  start_date_time: "2017-10-01 18:30:00",
  end_date_time: "2017-10-01 23:30:00",
  image_content_type: "png",
  image_file_name: "image",
  image_file_size: 10,
  image_updated_at: "2017-10-01 18:30:00",
  description: "You'll have a great time!",
  price: 50.00,
  num_tickets: 5,
  organizer_id: 5,
  organizer_description: "I'm a great event organizer"
)

event3 = Event.create!(
  title: "Visit this patch of grass",
  lat: 40.738695,
  lng: -73.992742,
  start_date_time: "2017-10-01 18:30:00",
  end_date_time: "2017-10-01 23:30:00",
  image_content_type: "png",
  image_file_name: "image",
  image_file_size: 10,
  image_updated_at: "2017-10-01 18:30:00",
  description: "You'll have a great time!",
  price: 15.50,
  num_tickets: 500,
  organizer_id: 4,
  organizer_description: "I'm a great event organizer"
)

Category.destroy_all

category1 = Category.create!(name: "Business")
category2 = Category.create!(name: "Music")
category3 = Category.create!(name: "Food & Drink")
category4 = Category.create!(name: "Arts")
category5 = Category.create!(name: "Other")
category6 = Category.create!(name: "Health")

EventType.destroy_all

event_type1 = EventType.create!(name: "Class")
event_type1 = EventType.create!(name: "Party")
event_type1 = EventType.create!(name: "Performance")
event_type1 = EventType.create!(name: "Tour")
event_type1 = EventType.create!(name: "Networking")

EventCategory.destroy_all

event_category1 = EventCategory.create!(event_id: 11, category_id: 7)
event_category2 = EventCategory.create!(event_id: 11, category_id: 8)
event_category3 = EventCategory.create!(event_id: 12, category_id: 7)
event_category4 = EventCategory.create!(event_id: 13, category_id: 9)

EventEventType.destroy_all

event_event_type = EventEventType.create!(event_id: 11, event_type_id: 6)
event_event_type = EventEventType.create!(event_id: 12, event_type_id: 6)
event_event_type = EventEventType.create!(event_id: 12, event_type_id: 7)
event_event_type = EventEventType.create!(event_id: 13, event_type_id: 8)
