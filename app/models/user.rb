class User < ActiveRecord::Base
  has_many :dogs
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable, omniauth_providers:[:google_oauth2]

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :provider, :uid, :password, :password_confirmation, :remember_me, :first_name, :last_name, :image_upload, :bio
  # attr_accessible :title, :body

  validates_presence_of :username

  def role?(role)
    self.role == role
  end

  def self.from_omniauth(auth)
    if user=User.find_by_email(auth.info.email)
      user.provider=auth.provider
      user.uid=auth.uid
      user
    else
      where(auth.slice(:provider,:uid)).first_or_create do|user|
        user.provider=auth.provider
        user.uid=auth.uid
        user.email=auth.info.email
        user.password=Devise.friendly_token[0,20]
      end
    end
  end
end
