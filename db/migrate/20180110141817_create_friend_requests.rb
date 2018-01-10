class CreateFriendRequests < ActiveRecord::Migration
  def change
    create_table :friend_requests do |t|
      t.integer :sender
      t.integer :recipient

      t.timestamps

    end
  end
end
