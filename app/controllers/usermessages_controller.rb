class UsermessagesController < ApplicationController
	def new
	  @usermessage = Usermessage.new
	end
	def create
	  @usermessage = Usermessage.new(usermessages_params)
	  if @usermessage.save	  
	  		first_name = params[:usermessage][:First_Name]
	  		last_name = params[:usermessage][:Last_Name]
				email = params[:usermessage][:Email]
				body = params[:usermessage][:Comments]
				ContactMailer.contact_email(first_name, last_name, email, body).deliver	
	  		flash[:success] = "Message sent."
	     	redirect_to new_usermessage_path
	  else	  	 
  	  @usermessage.errors.each do |attr, message| 
     		flash[:danger] = flash[:danger].to_s + "\n" + message 
      end 
	    redirect_to new_usermessage_path
	  end
	end
	private
	  def usermessages_params
	     params.require(:usermessage).permit(:User_ID, :First_Name, :Last_Name, :Email, :Comments)
	  end
end