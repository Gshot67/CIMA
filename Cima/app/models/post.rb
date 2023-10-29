class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  def self.search(query)
    if query
      where('tag LIKE ?', "%#{query}%")
    else
      all
    end
  end
end
