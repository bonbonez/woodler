class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  if false && Rails.env.development?
    #devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
    devise :database_authenticatable, :trackable, :validatable
  else
    devise :database_authenticatable, :trackable, :validatable
  end
end
