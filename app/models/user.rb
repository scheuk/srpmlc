class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids, :as => :admin
  attr_accessible :firstname, :lastname, :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  validates :firstname, :presence =>true
  validates :lastname, :presence =>true
  validates :email, :presence =>true, :uniqueness => { :case_sensitive => false }

  has_many :children
  has_and_belongs_to_many :sites
end
