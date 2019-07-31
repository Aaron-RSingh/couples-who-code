class User < ApplicationRecord
    has_secure_password
    validates_format_of :email, with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

    has_many :connections
    has_many :likes
    has_many :interests, through: :likes
    has_many :meetups, through: :connections

    

    validates :first_name, :last_name, :email, :password, :age, presence: true
    validates :email, uniqueness: true
    validates :age, numericality: true

end
