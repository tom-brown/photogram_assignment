class User < ApplicationRecord
  # Direct associations

  has_many   :received_followers,
             :class_name => "FriendRequest",
             :foreign_key => "recipient",
             :dependent => :destroy

  has_many   :sent_follows,
             :class_name => "FriendRequest",
             :foreign_key => "sender",
             :dependent => :destroy

  has_many   :likes,
             :dependent => :destroy

  has_many   :comments,
             :dependent => :destroy

  # Indirect associations

  has_many   :followers,
             :through => :received_followers,
             :source => :sender

  has_many   :follows,
             :through => :sent_follows,
             :source => :recipient

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
