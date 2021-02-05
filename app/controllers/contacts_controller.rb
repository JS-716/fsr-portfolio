class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(contact_params)
    @contact.request = request
    if @contact.deliver
      redirect_to root_url, notice: 'Votre message a bien été transmis !'
    else
      render :new
    end
  end

  def mentions_legales
  end

  private

  def contact_params
    params.require(:contact).permit(:last_name, :first_name, :email, :address, :message)
  end
end