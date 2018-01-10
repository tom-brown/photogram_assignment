class AddReceivedFollowerCountToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :received_followers_count, :integer
  end
end
