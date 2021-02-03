class Contact < MailForm::Base
  attribute :last_name, validate: true
  attribute :first_name, validate: true
  attribute :email, validate: true, validate: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  attribute :address
  attribute :message, validate: true

  
  def headers
    { 
      #this is the subject for the email generated, it can be anything you want
      subject: "Pâtisserie - Prise de contact",
      to: 'jaye30@gmail.com',
      from: %("#{first_name} #{last_name}" <#{email}>)
      #the from will display the name entered by the user followed by the email
    }
  end
end