class CoursesController < ApplicationController
	
	def show
		@batch = Batch.find(params[:batch_id])
		@course = @batch.courses.find(params[:id])
	end

end