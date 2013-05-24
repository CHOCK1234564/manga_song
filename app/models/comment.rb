class Comment < ActiveRecord::Base
  attr_accessible  :music_id, :content
  validates :content, :presence => true
  belongs_to :musique, :foreign_key => 'music_id'
end
