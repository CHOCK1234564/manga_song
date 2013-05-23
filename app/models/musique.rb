class Musique < ActiveRecord::Base
  attr_accessible :title, :name
  validates :name, :presence => true
  validates :title, :presence => true

  has_many :comments, :foreign_key => 'music_id'

end
