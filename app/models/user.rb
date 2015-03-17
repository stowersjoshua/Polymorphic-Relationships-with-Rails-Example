class User < ActiveRecord::Base
  validates :username, :uniqueness => true
  has_many :text_posts
  has_many :image_posts
  has_many :votes

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



  # I guess Rails 4.1 doesn't allow this.. =/
  #attr_accessible :email, :password, :password_confirmation, :remember_me, :username
end
