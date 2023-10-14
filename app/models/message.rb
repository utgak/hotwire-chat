class Message < ApplicationRecord
    belongs_to :room
    belongs_to :user

    scope :sorted, -> {order(:created_at)}

    validates :body, presence: true
end
