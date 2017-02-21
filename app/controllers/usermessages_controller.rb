class UsermessagesController < ApplicationController
	def new
	  @usermessage = Usermessage.new
	end
	def create
	  @usermessage = Usermessage.new(usermessages_params)
	  if @usermessage.save
	     redirect_to new_usermessage_path, notice: "Message sent."
	  else
	     redirect_to new_usermessage_path, notice: "Error occured."
	  end
	end
	private
	  def usermessages_params
	     params.require(:usermessage).permit(:User_ID, :First_Name, :Last_Name, :Email, :Comments)
	  end
end