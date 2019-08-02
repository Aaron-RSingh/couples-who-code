class Connection < ApplicationRecord
    belongs_to :user
    belongs_to :meetup

    # def user_interests

    #     current_user.interests.map do |interest| 
    #         interest.name 
    #     end 
           
    # end 
end
