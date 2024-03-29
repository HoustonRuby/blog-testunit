class Post < ActiveRecord::Base
  attr_accessible :title, :content
  validates_presence_of :title
  validates_presence_of :content
  has_many :comments, dependent: :destroy
  
end
