class ContactsController < ApplicationController
  def new
    @contact = Contact.new params[:contact]
  end

  def show; end

  def create
    @contact = Contact.new(params[:contact])

    if @contact.save
      ClientMailer.client_email(@contact).deliver
      ClientMailer.admin_email(@contact).deliver
      redirect_to contact_path(:anchor => 'form')
    else
      render :action => 'new'
    end
  end

end
