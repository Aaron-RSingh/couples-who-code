module UsersHelper


    def interest_info 
        @interests = @user.interests.uniq.each {|interest| interest.name}
        @interest_name = @interests.map{|interest| interest.name}
        @interest_users = @interests[0].users.select{|user| user.id != @user.id}
        @interest_users_names = @interest_users.map{|user| user.first_name}
    end

end
