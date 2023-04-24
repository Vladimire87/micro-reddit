# frozen_string_literal: true

# Post
# Validates
# title [unique, present]
# url [present]
# user_id: [present]
# belongs_to author
class Post < ApplicationRecord
  validates :title,
            presence: true,
            uniqueness: true
  validates :url,
            presence: true
  validates :user_id,
            presence: true
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
end
