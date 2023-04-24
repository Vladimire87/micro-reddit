# frozen_string_literal: true

class User < ApplicationRecord
  validates :username, :email, presence: true, uniqueness: true
  validates :username, length: { minimum: 4, maximum: 12 }
end
# Authors

# username:string [unique, 4-12 chars, present]
# email:string [unique, present]
# id:integer
# created_at:datetime
# updated_at:datetime

# has_many posts

# Posts

# title:string [unique, present]
# body:text [present]
# author_id:integer [present]
# id:integer
# created_at:datetime
# updated_at:datetime

# belongs_to author
