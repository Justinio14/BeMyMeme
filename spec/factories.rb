# # This will guess the User class
# FactoryGirl.define do
#
#   factory :user do
#     email "aa@bb.com"
#     password 'topsecret'
#     password_confirmation 'topsecret'
#     username 'John'
#     bio 'great tester'
#     dob {21.years.ago}
#     gender 'male'
#     postcode 'NG9 3GW'
#     location 'Nottingham'
#     interested_in 'female'
#   end
#
#   factory :female, class: User do
#       username "Jenny"
#       gender  "female"
#   end
#
#   factory :male_message, class: Message do
#     message "Hello do you dream my meme?"
#     sender_id 'John'
#     recipient_id 'Jenny'
#     chat_id 3
#     user_id 1
#   end
#
#   factory :female_message, class: Message do
#       message "Hello your meme makes me scream"
#       sender_id 'Jenny'
#       recipient_id 'John'
#       chat_id 3
#       user_id 2
#   end
#
#   factory :female_init, class: Chat do
#     chat_initiator 2
#     chat_recipient 3
#   end
#
#   factory :male_init, class: Chat do
#     chat_initiator 3
#     chat_recipient 2
#   end
#
#   FactoryGirl.define do
#
#   # language factory with a `belongs_to` association for the profile
#   factory :meme do
#     title "Through the Looking Glass"
#     user
#   end
#
#   # profile factory without associated languages
#   factory :user do
#     name "John Doe"
#
#     # profile_with_languages will create language data after the profile has
#     # been created
#     factory :user_with_memes do
#       # languages_count is declared as an ignored attribute and available in
#       # attributes on the factory, as well as the callback via the evaluator
#       transient do
#         memes_count 5
#       end
#
#       # the after(:create) yields two values; the profile instance itself and
#       # the evaluator, which stores all values from the factory, including
#       # ignored attributes; `create_list`'s second argument is the number of
#       # records to create and we make sure the profile is associated properly
#       # to the language
#       after(:create) do |user, evaluator|
#         create_list(:meme, evaluator.memes_count, users: [user])
#       end
#     end
#   end
# end
# end
