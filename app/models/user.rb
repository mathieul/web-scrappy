class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :http_authenticatable, :token_authenticatable, :lockable, :timeoutable and :activatable
  devise :registerable, :authenticatable, :confirmable, :recoverable,
         :rememberable, :trackable, :validatable

  has_many :scrappies, :foreign_key => "creator_id", :dependent => :nullify

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation
end
