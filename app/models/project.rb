class Project < ActiveRecord::Base

  validates :title, :presence => true
  validates :detail, :presence => true

end
