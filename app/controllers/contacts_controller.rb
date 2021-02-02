class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(contact_params)
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Votre message a bien été transmis'
      redirect_to root_path
    else
      flash.now[:error] = 'Merci de compléter tous les champs requis'
      render :new
    end
  end

  def disclaimer
  end

  private

  def contact_params
    params.require(:contact).permit(:last_name, :first_name, :email, :address, :message)
  end
end