class Musique < ActiveRecord::Base
  attr_accessible :title, :name, :category_id 
  validates :name, :presence => true
  validates :title, :presence => true
  
  has_many :comments, :foreign_key => 'music_id'
  belongs_to :category
end
