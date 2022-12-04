class PhoneNumber < ApplicationRecord
  belongs_to :user
  validates :number ,presence: true,uniqueness: {message: "hello"}
end
