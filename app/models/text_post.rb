class TextPost < ActiveRecord::Base
  belongs_to :user
  has_many :votes, as: :voteable
end
