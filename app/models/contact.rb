class Contact < MailForm::Base
  attribute :last_name, validate: true
  attribute :first_name, validate: true
  attribute :email, validate: true
  attribute :address, validate: true
  attribute :message
  def headers
    { 
      #this is the subject for the email generated, it can be anything you want
      subject: "Pâtisserie - Prise de contact",
      to: 'your.email@yourdomain.com',
      from: %("#{first_name} #{last_name}" <#{email}>)
      #the from will display the name entered by the user followed by the email
    }
  end
end