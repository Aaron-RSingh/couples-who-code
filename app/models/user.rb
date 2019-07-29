class User < ApplicationRecord
    has_secure_password

    has_many :connections
    has_many :likes
    has_many :interests, through: :likes
    has_many :meetups, through: :connections

    

    validates :name, :username, :password, :age, presence: true
    validates :username, uniqueness: true
    validates :age, numericality: true

end
