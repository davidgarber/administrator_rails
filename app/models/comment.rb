class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user

  validates :name, :presence => true
  validates :comment, :presence => true
end
