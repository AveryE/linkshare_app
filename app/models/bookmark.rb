class Bookmark < ActiveRecord::Base
  attr_accessible :dateSaved, :name, :url
  
  validates :url, :length => { :minimum => 5 }
  validates :url, :length => { :maximum => 100 }
  validates :name, :length => { :minimum => 3 }
  validates :name, :length => { :maximum => 50 }
end
