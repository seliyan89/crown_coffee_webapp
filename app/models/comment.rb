class Comment < ApplicationRecord

	validates :name, :email, :mobile_number, :message, presence: true
	validates :mobile_number, numericality: { only_integer: true }, :allow_blank => true
	validates :name, :email, :mobile_number, :message, :format => { :with => /\A[a-zA-Z0-9-@\s.]*\z/ }, :allow_blank => true

end
