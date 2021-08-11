class User < ApplicationRecord
  # validates :name, presence: true
  has_many :scores
  has_many :games, through: :scores 
  has_many :messages


end
