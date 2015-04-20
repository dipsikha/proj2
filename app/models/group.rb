class Group < ActiveRecord::Base
	belongs_to :location
	has_and_belongs_to_many :users
	validates :name, presence: true
	validates :location, presence: true
end
