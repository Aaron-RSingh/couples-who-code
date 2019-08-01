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

    def interest_info 
        @interests = @user.interests.uniq.each {|interest| interest.name}
        @interest_name = @interests[0].name
        @interest_users = @interests[0].users.select{|user| user.id != @user.id}
        @interest_users_names = @interest_users.map{|user| user.first_name}
    end

    # def 
    # @interest_users = @interests[0].users.select{|user| user.id != @user.id}

end
