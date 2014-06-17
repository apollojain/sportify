class Comment < ActiveRecord::Base
  belongs_to :game
  validates :commenter, presence: true
  validates :body, presence: true
end
