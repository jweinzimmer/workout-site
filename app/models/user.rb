class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
#makes sure that when a user saves their info that the first_name was entered
  validates :first_name, presence: true


	validates :profile_name, presence: true, uniqueness: true
  has_many :workouts
  has_many :supplements
  has_many :plans
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


   def full_name
    first_name + " " + last_name
   end

   def self.plans
    plans.where(user_id: :id)
   end

end
