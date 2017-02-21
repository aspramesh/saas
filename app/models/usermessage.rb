class Usermessage < ActiveRecord::Base	
	before_save :default_values

  def default_values   	
   	self.User_ID ||= 1 
   	self.LOP_ID ||= 1 
   	self.COP_ID ||= 1     	
  end	
end