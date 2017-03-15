class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :chats, dependent: :destroy
  has_many :memes
  has_many :blocks
  has_many :messages, dependent: :destroy
end
