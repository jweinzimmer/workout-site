class Plan < ActiveRecord::Base


		has_attached_file :photo, :styles => { :medium => "800x600>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
   validates_attachment_content_type :photo, :content_type => [/\Aimage\/.*\Z/, "application/pdf"], :reject_if => lambda { |a| a[:reps].blank? }, :allow_destroy => true
  #validates_attachment :photo, content_type: { content_type: ["application/pdf", /\Aimage\/.*\Z/]}
  has_attached_file :photo, :styles =>{ :small => "150x150>"},:reject_if => lambda { |a| a[:reps].blank? }, :allow_destroy => true,

:url  => "/assets/plans/:id/:style/:basename.:extension",
:path => ":rails_root/public/assets/plans/:id/:style/:basename.:extension"

# validates_attachment_presence :photo
validates_attachment_size :photo, :less_than => 5.megabytes
validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png' , 'application/pdf']
	has_many :workouts, :dependent => :destroy
	accepts_nested_attributes_for :workouts, allow_destroy: true
	# def self.user_plans
	# 	Plan.where(:id == current_user.plan_id)
	# end
scope :between, lambda {|start_time, end_time|  
   {:conditions => ["? < starts_at < ?", Event.format_date(start_time),      Event.format_date(end_time)] }  
  }  
  def self.format_date(date_time)  
   Time.at(date_time.to_i).to_formatted_s(:db)  
  end 
   def as_json(options = {})  
   {  
    :id => self.id,  
    :title => self.name,  
    :description => self.name || "",  
    :start => start_date,  
    :end => end_date,  
    # :allDay => self.all_day,  
    :recurring => false,  
    :url => Rails.application.routes.url_helpers.plan_path(id),  
   }  
  end  







#   scope :between, lambda {|start_date, end_date|
#     {:conditions => [
#   "starts_at > ? and starts_at < ?",
#   Event.format_date(start_date), Event.format_date(end_date)
# ] }
#   }

  # need to override the json view to return what full_calendar is expecting.
  # http://arshaw.com/fullcalendar/docs/event_data/Event_Object/
  # def as_json(options = {})
  #   {
  #     :id => self.id,
  #     :start => starts_at.rfc822,
  #     :end => ends_at.rfc822,
  #     :recurring => false,
  #     :url => Rails.application.routes.url_helpers.current_user_plans_path(id),
  #     #:color => "red"
  #   }

  # end

  # def self.format_date(date_time)
  #   Time.at(date_time.to_i).to_formatted_s(:db)
  # end








end
