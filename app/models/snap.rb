require 'mini_exiftool'
class Snap < ActiveRecord::Base
  belongs_to :user
  has_attached_file :image, :styles => { :xlarge => "2048x2048>", :large => "1024x1024>", :medium => "800x800>", :small => "320x320>", :thumb => "150x150>" }

  after_post_process :get_exif
  
  validates :image, presence: true
  validates :title, presence: true

  def get_exif
      photo = MiniExiftool.new(image.queued_for_write[:original].path)
      self.taken_at = photo["DateTimeOriginal"]
      self.make = photo["Make"]
      self.model = photo["Model"]
  end
end
