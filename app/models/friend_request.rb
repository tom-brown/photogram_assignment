class FriendRequest < ApplicationRecord
  # Direct associations

  belongs_to :sender,
             :class_name => "User",
             :counter_cache => :follows_count

  # Indirect associations

  # Validations

end
