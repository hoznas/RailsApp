class Message < ApplicationRecord
  belongs_to :person
  validates :message, presence: true
end
