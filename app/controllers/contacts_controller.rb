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
      #flash.now[:errors] = 'Merci de compléter tous les champs requis'
      render :new, notice: 'Merci de compléter tous les champs requis'
    end
  end

  def disclaimer
  end

  private

  def contact_params
    params.require(:contact).permit(:last_name, :first_name, :email, :address, :message)
  end
end