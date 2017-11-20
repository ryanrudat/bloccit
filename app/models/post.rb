class Post < ApplicationRecord
# The has_many method allows a post instance to have many comments related to it,
# and also provides methods that allow us to retrieve comments that belong to a post.
  has_many :comments
end
