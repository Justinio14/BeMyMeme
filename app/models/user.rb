class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :username, length: { minimum: 3 }, uniqueness: true, presence: true
  has_many :chats
  has_many :memes
  has_many :blocks
end
