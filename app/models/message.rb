class Message < ApplicationRecord
	validates :content, presence: true
	validates :number, presence: true
end
