class ContactMailer < ActionMailer::Base
  default to: 'rsubramaniam@auto-it.com.au'
  def contact_email(first_name, last_name, email, body)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @body = body    
    mail(from: email, subject: 'Contact Form Message')
  end
end