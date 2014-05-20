class Listing < ActiveRecord::Base
	 has_attached_file :image, :styles => { :medium => "150x>", :thumb => "100x100>" }, :default_url => "no-available-image.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
