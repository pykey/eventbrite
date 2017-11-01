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
  start_date_time: "2017-10-01 18:30:00",
  end_date_time: "2017-10-01 23:30:00",
  description: "You'll have a great time!",
  price: 0,
  num_tickets: 50,
  organizer_id: user1.id,
  organizer_name: "Emily",
  organizer_description: "I'm a great event organizer",
  avatar: File.open("app/assets/images/Ginkgo_biloba_scanned_leaf.jpg"),
  avatar_content_type: "image/jpeg",
  location: "New York, New York"
)

event2 = Event.create!(
  title: "Visit this tree",
  start_date_time: "2017-10-01 18:30:00",
  end_date_time: "2017-10-01 23:30:00",
  description: "You'll have a great time!",
  price: 50.00,
  num_tickets: 5,
  organizer_id: user1.id,
  organizer_name: "Joey",
  organizer_description: "I'm a great event organizer",
  avatar: File.open("app/assets/images/Ginkgo_biloba_scanned_leaf.jpg"),
  avatar_content_type: "image/jpeg",
  location: "New York, New York"
)

event3 = Event.create!(
  title: "Visit this patch of grass",
  start_date_time: "2017-10-01 18:30:00",
  end_date_time: "2017-10-01 23:30:00",
  description: "You'll have a great time!",
  price: 15.50,
  num_tickets: 500,
  organizer_id: user2.id,
  organizer_name: "App Academy",
  organizer_description: "I'm a great event organizer",
  avatar: File.open("app/assets/images/Ginkgo_biloba_scanned_leaf.jpg"),
  avatar_content_type: "image/jpeg",
  location: "New York, New York"
)

event4 = Event.create!(
  title: "Visit this stick",
  start_date_time: "2017-10-01 18:30:00",
  end_date_time: "2017-10-01 23:30:00",
  description: "You'll have a great time!",
  price: 15.50,
  num_tickets: 500,
  organizer_id: user3.id,
  organizer_name: "Shake Shack",
  organizer_description: "I'm a great event organizer",
  avatar: File.open("app/assets/images/Ginkgo_biloba_scanned_leaf.jpg"),
  avatar_content_type: "image/jpeg",
  location: "New York, New York"
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
event_type2 = EventType.create!(name: "Party")
event_type3 = EventType.create!(name: "Performance")
event_type4 = EventType.create!(name: "Tour")
event_type5 = EventType.create!(name: "Networking")

EventCategory.destroy_all

event_category1 = EventCategory.create!(event_id: event1.id, category_id: category1.id)
event_category2 = EventCategory.create!(event_id: event2.id, category_id: category2.id)
event_category3 = EventCategory.create!(event_id: event3.id, category_id: category3.id)
event_category4 = EventCategory.create!(event_id: event4.id, category_id: category4.id)

EventEventType.destroy_all

event_event_type1 = EventEventType.create!(event_id: event1.id, event_type_id: event_type1.id)
event_event_type2 = EventEventType.create!(event_id: event2.id, event_type_id: event_type2.id)
event_event_type3 = EventEventType.create!(event_id: event3.id, event_type_id: event_type2.id)
event_event_type4 = EventEventType.create!(event_id: event4.id, event_type_id: event_type3.id)

Ticket.destroy_all

ticket1 = Ticket.create!(event_id: event1.id, purchaser_id: user1.id)
ticket1 = Ticket.create!(event_id: event1.id, purchaser_id: user2.id)
ticket1 = Ticket.create!(event_id: event1.id, purchaser_id: user3.id)
ticket1 = Ticket.create!(event_id: event2.id, purchaser_id: user1.id)
ticket1 = Ticket.create!(event_id: event3.id, purchaser_id: user1.id)
ticket1 = Ticket.create!(event_id: event4.id, purchaser_id: user2.id)
ticket1 = Ticket.create!(event_id: event4.id, purchaser_id: user3.id)

SavedEvent.destroy_all

saved_event1 = SavedEvent.create!(user_id: user1.id, event_id: event1.id)
saved_event1 = SavedEvent.create!(user_id: user1.id, event_id: event2.id)
saved_event1 = SavedEvent.create!(user_id: user1.id, event_id: event3.id)
saved_event1 = SavedEvent.create!(user_id: user1.id, event_id: event4.id)
saved_event1 = SavedEvent.create!(user_id: user2.id, event_id: event1.id)
saved_event1 = SavedEvent.create!(user_id: user2.id, event_id: event2.id)
saved_event1 = SavedEvent.create!(user_id: user3.id, event_id: event1.id)
saved_event1 = SavedEvent.create!(user_id: user3.id, event_id: event3.id)
saved_event1 = SavedEvent.create!(user_id: user4.id, event_id: event3.id)
saved_event1 = SavedEvent.create!(user_id: user5.id, event_id: event3.id)
saved_event1 = SavedEvent.create!(user_id: user5.id, event_id: event4.id)
