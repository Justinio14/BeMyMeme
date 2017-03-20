class Meme < ApplicationRecord
  validates_presence_of :name, :tag
  has_and_belongs_to_many :users

end
