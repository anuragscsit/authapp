class SectionsController < ApplicationController
	
	def show
		@batch = Batch.find(params[:batch_id])
		@section = @batch.sections.find(params[:id])
	end

end