class Message < ApplicationRecord
    belongs_to :room
    belongs_to :user

    scope :sorted, -> {order(:timestamp)}

    validates :body, presence: true
end
