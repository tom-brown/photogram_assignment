class AddFollowCountToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :follows_count, :integer
  end
end
