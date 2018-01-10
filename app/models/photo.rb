class Photo < ApplicationRecord
  mount_uploader :image, ImageUploader

  # Direct associations

  has_many   :likes,
             :dependent => :destroy

  has_many   :comments,
             :dependent => :destroy

  belongs_to :user,
             :counter_cache => true

  # Indirect associations

  has_many   :user_likes,
             :through => :likes,
             :source => :user

  has_many   :users,
             :through => :comments,
             :source => :user

  # Validations

end
