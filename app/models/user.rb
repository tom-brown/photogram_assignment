class User < ApplicationRecord
  # Direct associations

  has_many   :sent_follow_requests,
             :class_name => "FriendRequest",
             :foreign_key => "sender",
             :dependent => :destroy

  has_many   :received_follow_requests,
             :class_name => "FriendRequest",
             :foreign_key => "recipient",
             :dependent => :destroy

  has_many   :photos,
             :dependent => :destroy

  has_many   :likes,
             :dependent => :destroy

  has_many   :comments,
             :dependent => :destroy

  # Indirect associations

  has_many   :photo_likes,
             :through => :likes,
             :source => :photo

  has_many   :photo_comments,
             :through => :comments,
             :source => :photo

  has_many   :followers,
             :through => :received_follow_requests,
             :source => :sender

  has_many   :follows,
             :through => :sent_follow_requests,
             :source => :recipient

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
