class Comment < ApplicationRecord
  validates :description, presence: true
  validates :user_id, presence: true
  validates :topic_id, presence: true
  
  belongs_to :user
  belongs_to :topic
  
end
