class Like < ApplicationRecord
  # Direct associations

  belongs_to :photo,
             :counter_cache => true

  belongs_to :user

  # Indirect associations

  # Validations

end
