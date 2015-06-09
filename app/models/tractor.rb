class Tractor < ActiveRecord::Base
	has_and_belongs_to_many :drivers, :join_table => "drivers_tractors"
	validates_presence_of :name, :max_weight
	validates :max_weight, numericality: true
end
