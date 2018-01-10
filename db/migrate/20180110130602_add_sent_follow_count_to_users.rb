class AddSentFollowCountToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :sent_follows_count, :integer
  end
end
