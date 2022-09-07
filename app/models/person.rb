class Person < ApplicationRecord
  has_many :message

  validates :name, presence: true
  validates :age, numericality: true
  #validates :email, email: {message: ' is not email.'}
end
