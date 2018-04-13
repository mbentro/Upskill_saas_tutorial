class ContactsController < ApplicationController
    def new
        @contact = Contact.new      # @ = instance variable
    end
    
    def create
        @contact = Contact.new(contact_params)
        if @contact.save
            flash[:success] = "Message Sent."
            redirect_to new_contact_path
        else
            flash[:error] = @contact.errors.full_messages.join(", ")
            redirect_to new_contact_path
        end
    end
    
    private
        def contact_params  # required for rails security
            params.require(:contact).permit(:name, :email, :comments)
        end
end