class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.boolean :heart
      t.text :comment

      t.timestamps
    end
  end
end
