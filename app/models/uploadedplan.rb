class Uploadedplan < ActiveRecord::Base
			has_attached_file :photo, :styles => { :medium => "800x600>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
   validates_attachment_content_type :photo, :content_type => [/\Aimage\/.*\Z/, "application/pdf"], :reject_if => lambda { |a| a[:reps].blank? }, :allow_destroy => true
  #validates_attachment :photo, content_type: { content_type: ["application/pdf", /\Aimage\/.*\Z/]}
  has_attached_file :photo, :styles =>{ :small => "150x150>"},:reject_if => lambda { |a| a[:reps].blank? }, :allow_destroy => true,

:url  => "/assets/plans/:id/:style/:basename.:extension",
:path => ":rails_root/public/assets/plans/:id/:style/:basename.:extension"

# validates_attachment_presence :photo
validates_attachment_size :photo, :less_than => 5.megabytes
validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png' , 'application/pdf']
end
