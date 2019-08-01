class Interest < ApplicationRecord
    has_many :likes
    has_many :users, through: :likes
    
    def excluded_user_interests(excluded_user)
        self.users.select{|user| user.id != excluded_user.id}
    end
end
