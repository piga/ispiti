class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Čim prije ću vam se javiti!'
    else
      flash.now[:error] = 'Valjda si krivo mail unio. Poruka nije poslana!'
    end
    
    render template: 'static_pages/home'
  end
end