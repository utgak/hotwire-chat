class Message < ApplicationRecord
    belongs_to :room
    belongs_to :user, optional: true

    scope :sorted, -> {order(:created_at)}

    validates :body, presence: true
end
