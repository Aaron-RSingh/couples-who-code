class Interest < ApplicationRecord
    has_many :likes
    has_many :users, through: :likes
    
    def excluded_user_interests(excluded_user)
        self.users.select{|user| user.id != excluded_user.id}
    end



    def users_intersts
        # other_users = current_user.interests.each do
        

        
        
        
        # users.select {|user| user.id != current_user.id}
        # user_ = potential_matches.map{|user| user}
        # potential_matches
    end

end
