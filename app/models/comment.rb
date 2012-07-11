class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :text
  validates_presence_of :post
end
