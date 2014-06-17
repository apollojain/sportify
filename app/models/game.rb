class Game < ActiveRecord::Base
	has_many :votes, dependent: :destroy
	has_many :comments
	validates :sport, presence: true
	validates :address, presence: true
	validates :date, presence: true
	validates :stattime, presence: true
	validates :endtime, presence: true
end
