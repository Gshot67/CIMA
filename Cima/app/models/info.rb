class Info < ApplicationRecord
  belongs_to :user
  has_many :infos, foreign_key: 'username'
end
