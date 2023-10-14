class User < ApplicationRecord
  has_many :rooms, dependent: :destroy
  has_many :messages, dependent: :destroy
  
  devise :database_authenticatable, :registerable, :rememberable, :validatable
end
