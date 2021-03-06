class Game < ActiveRecord::Base
	belongs_to :user
	has_many :players, dependent: :destroy
	has_many :votes, dependent: :destroy
	has_many :comments, dependent: :destroy
	validates :sport, presence: true
	validates :address, presence: true
	validates :date, presence: true
	validates :stattime, presence: true
	validates :endtime, presence: true
end
