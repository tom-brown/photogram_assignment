class FriendRequest < ApplicationRecord
  # Direct associations

  belongs_to :recipient,
             :class_name => "User",
             :counter_cache => :followers_count

  belongs_to :sender,
             :class_name => "User",
             :counter_cache => :follows_count

  # Indirect associations

  # Validations

end
