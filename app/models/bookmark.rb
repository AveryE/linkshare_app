# == Schema Information
#
# Table name: bookmarks
#
#  id         :integer          not null, primary key
#  url        :string(255)
#  name       :string(255)
#  dateSaved  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Bookmark < ActiveRecord::Base
  attr_accessible :dateSaved, :name, :url
  
  validates :url, :length => { :minimum => 5 }
  validates :url, :length => { :maximum => 100 }
  validates :name, :length => { :minimum => 3 }
  validates :name, :length => { :maximum => 50 }
end
