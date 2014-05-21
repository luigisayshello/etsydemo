class Listing < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "150x", :thumb => "100x100>" }, :default_url => "default.jpg",
      :storage => :dropbox,
      :dropbox_credentials => Rails.root.join("config/dropbox.yml")
 	  #validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  	  #do_not_validate_attachment_file_type :image
end
