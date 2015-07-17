class Reference < ActiveRecord::Base
  validates :name, :presence => true
end
