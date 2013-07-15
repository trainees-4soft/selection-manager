class User < ActiveRecord::Base
  has_and_belongs_to_many :roles
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, #:registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role_ids, :enterprise_id
  # attr_accessible :title, :body
  belongs_to :enterprise
  validates_presence_of :enterprise_id, :role_ids
  def role?(role)
    return !!self.roles.find_by_name(role.to_s.camelize)
  end
end