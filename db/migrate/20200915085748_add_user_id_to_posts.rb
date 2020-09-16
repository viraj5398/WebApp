class AddUserIdToPosts < ActiveRecord::Migration[6.0]
  def change
	add_column :posts, :user_id, :integer
    add_index :posts, :user_id   #adds index  end
  end
end