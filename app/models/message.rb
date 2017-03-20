class Message < ApplicationRecord
	
	#NOT DONE!
	#should set the search of content
	def self.search(search)
  		where("content LIKE ?", "%#{search}%")
	end

	#specifies viewing and displaying order
	default_scope -> { order(created_at: :desc) }

	#specifies constraints for the attributes
	validates :content, presence: true
	validates :number, presence: true, uniqueness: true
end
