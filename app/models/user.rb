class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # instead of deleting, indicate the user requested a delete & timestamp it  
  def soft_delete  
    update_attribute(:is_deleted, true)  
  end  
  
  # ensure user account is active  
  def active_for_authentication?  
    super && !is_deleted  
  end  
  
  # provide a custom message for a deleted account   
  def inactive_message   
  	!is_deleted ? super : :deleted_account  
  end  

end
