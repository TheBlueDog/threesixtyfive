class Snap < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => { :xlarge => "2048x2048>", :large => "1024x1024>", :medium => "800x800>", :small => "320x320>", :thumb => "150x150>" }
	
	validates :image, presence: true
	validates :title, presence: true
end
