class Contact < ActiveRecord::Base
   # Blueprint for the contact object. Don't need to write out all the keys, 
   # because Rails assumes object from schema.rb
   validates :name, presence: true
   validates :email, presence: true
   validates :comments, presence: true
end