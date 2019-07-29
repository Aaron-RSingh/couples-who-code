class AddInterestIdToLikes < ActiveRecord::Migration[5.2]
  def change
    add_reference :likes, :interest, foreign_key: true
  end
end
