class Workout < ActiveRecord::Base
	has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
   validates_attachment_content_type :photo, :content_type => [/\Aimage\/.*\Z/, "application/pdf"]
  #validates_attachment :photo, content_type: { content_type: ["application/pdf", /\Aimage\/.*\Z/]}
  has_attached_file :photo, :styles =>{ :small => "150x150>"},

:url  => "/assets/workouts/:id/:style/:basename.:extension",
:path => ":rails_root/public/assets/workouts/:id/:style/:basename.:extension"

# validates_attachment_presence :photo
validates_attachment_size :photo, :less_than => 5.megabytes
validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png' , 'application/pdf']
belongs_to :user
belongs_to :plans

def self.total_on(date)
	where("date(created_at) = ?", date).sum(:weight)
	end
end
