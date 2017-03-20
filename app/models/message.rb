class Message < ApplicationRecord
	
	def self.search(search)
  		where("content LIKE ?", "%#{search}%")
	end

	default_scope -> { order(created_at: :desc) }
	validates :content, presence: true
	validates :number, presence: true, uniqueness: true
end
