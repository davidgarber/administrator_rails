class Project < ActiveRecord::Base
  belongs_to :category

  validates :title, :presence => true
  validates :detail, :presence => true
  validates :url, :presence => true
end
