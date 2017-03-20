class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :username, length: { minimum: 3 }, uniqueness: true, presence: true
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment :image,
  content_type: {content_type: /\Aimage\/.*\Z/},
  size: {in: 0..1.megabytes }
  has_many :chats
  has_and_belongs_to_many :memes
  has_many :blocks
end
