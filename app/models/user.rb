class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # instead of deleting, indicate the user requested a delete & timestamp it  
  def soft_delete  
    update_attribute(:is_deleted, true)  
  end  

  def self.restore_user(email)
    user_to_update = User.find_by(email: email)
    user_to_update.is_deleted = false
    user_to_update.save
  end
  
  # ensure user account is active  
  def active_for_authentication?  
    super && !is_deleted  
  end  
  
  # provide a custom message for a deleted account   
  def inactive_message   
  	!is_deleted ? super : :deleted_account  
  end  

  has_many :order
end
