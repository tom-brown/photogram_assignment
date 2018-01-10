class User < ApplicationRecord
  # Direct associations

  has_many   :followers,
             :class_name => "FriendRequest",
             :foreign_key => "recipient",
             :dependent => :destroy

  has_many   :follows,
             :class_name => "FriendRequest",
             :foreign_key => "sender",
             :dependent => :destroy

  has_many   :likes,
             :dependent => :destroy

  has_many   :comments,
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
