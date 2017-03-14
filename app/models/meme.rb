class Meme < ApplicationRecord
  validates_presence_of :name, :tag
end
