class Usermessage < ActiveRecord::Base	
	validates :First_Name, :presence => { :message => "First Name is required." }
	validates :Last_Name, :presence => { :message => "Last Name is required." }
  validates :Email, :presence => { :message => "Email is required." }
  validates :Comments, :presence => { :message => "Message is required." }

	before_save :default_values

  def default_values   	
   	self.User_ID ||= 1 
   	self.LOP_ID ||= 1 
   	self.COP_ID ||= 1     	
  end	
end