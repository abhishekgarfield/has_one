class User < ApplicationRecord
    has_one :phoneNumber
    validates :name ,presence: true
end
