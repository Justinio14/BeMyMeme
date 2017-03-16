class Meme < ApplicationRecord
  validates_presence_of :name, :tag
  has_many :users

end

