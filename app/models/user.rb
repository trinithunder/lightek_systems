class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :likes
  has_many :matches
  has_many :messages
  has_many :cards
  has_one :cart
  has_many :follows
  has_many :posts
  has_many :quizzes
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
