# frozen_string_literal: true

class Comment < ApplicationRecord
  validates :body,
            length: { maximum: 255,
                      too_long: '%<count>s characters is the maximum allowed' }
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  belongs_to :post, class_name: 'Post', foreign_key: 'post_id'
end

# // Ref: Comment.user_id > User.id
# // Ref: Comment.post_id > Post.id
