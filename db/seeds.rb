# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create! :email => "aa@bb.com", :password => 'topsecret', :password_confirmation => 'topsecret', :username => 'test', :bio => 'great tester', :gender => 'not sure', :postcode => 'NG9 3GW', :location => 'Bramcote', :interested_in => 'female'
user2 = User.create! :email => "bb@cc.com", :password => 'topsecret', :password_confirmation => 'topsecret', :username => 'test1', :bio => 'great tester1', :gender => 'male', :postcode => 'NG10 3GW', :location => 'Kimberley', :interested_in => 'female'
user3 = User.create! :email => "cc@dd.com", :password => 'topsecret', :password_confirmation => 'topsecret', :username => 'test2', :bio => 'great tester2', :gender => 'female', :postcode => 'NG11 3DX', :location => 'Beeston', :interested_in => 'male'
user4 = User.create! :email => "dd@ee.com", :password => 'topsecret', :password_confirmation => 'topsecret', :username => 'test3', :bio => 'great tester3', :gender => 'female', :postcode => 'NG8 1FN', :location => 'Wollaton', :interested_in => 'male'
user5 = User.create! :email => "ee@ee.com", :password => 'topsecret', :password_confirmation => 'topsecret', :username => 'test4', :bio => 'great tester4', :gender => 'female', :postcode => 'NG8 1FN', :location => 'Wollaton', :interested_in => 'male'
user6 = User.create! :email => "ff@ee.com", :password => 'topsecret', :password_confirmation => 'topsecret', :username => 'test5', :bio => 'great tester5', :gender => 'female', :postcode => 'NG8 1FN', :location => 'Wollaton', :interested_in => 'male'
user7 = User.create! :email => "gg@ee.com", :password => 'topsecret', :password_confirmation => 'topsecret', :username => 'test6', :bio => 'great tester6', :gender => 'female', :postcode => 'NG8 1FN', :location => 'Wollaton', :interested_in => 'male'
user8 = User.create! :email => "hh@ee.com", :password => 'topsecret', :password_confirmation => 'topsecret', :username => 'test7', :bio => 'great tester7', :gender => 'female', :postcode => 'NG8 1FN', :location => 'Wollaton', :interested_in => 'male'
user9 = User.create! :email => "ii@ee.com", :password => 'topsecret', :password_confirmation => 'topsecret', :username => 'test8', :bio => 'great tester8', :gender => 'female', :postcode => 'NG8 1FN', :location => 'Wollaton', :interested_in => 'male'
user10 = User.create! :email => "jj@ee.com", :password => 'topsecret', :password_confirmation => 'topsecret', :username => 'test9', :bio => 'great tester9', :gender => 'female', :postcode => 'NG8 1FN', :location => 'Wollaton', :interested_in => 'male'
user11 = User.create! :email => "kk@ee.com", :password => 'topsecret', :password_confirmation => 'topsecret', :username => 'test10', :bio => 'great tester10', :gender => 'female', :postcode => 'NG8 1FN', :location => 'Wollaton', :interested_in => 'male'
