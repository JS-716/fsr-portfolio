class ContactsController < ApplicationController
  def def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(contact_params)
    if @contact.deliver
      render json: {message: "Vous message a été transmis"}
    else
      render json: @contact.errors
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:last_name, :first_name, :email, :address, :message)
  end
end