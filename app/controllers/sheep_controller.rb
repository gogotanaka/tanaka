class SheepController < ApplicationController
	def index
		unless Sheep.find_by_id(1)
			Sheep.create(quantity: 1)
		end
	end
	def count
		sheep = Sheep.find_by_id(1)
		sheep.quantity += 1
		sheep.save
		redirect_to :back
	end
end
