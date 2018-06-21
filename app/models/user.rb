class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # removed :registratable no user sign up should be allowed for now
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable
end
