class Meetup < ApplicationRecord
    has_many :connections
    has_many :users, through: :connections

end
