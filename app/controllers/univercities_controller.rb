class UnivercitiesController < ApplicationController
	
	def index
		@univercities = Univercity.all
	end

	def new
		@univercity = Univercity.new
	end

	def edit
		@univercity = Univercity.find(params[:id])
	end

	def show
		@univercity = Univercity.find(params[:id])
	end

	def create
		@univercity = Univercity.new(univ_params)
		if @univercity.save
			redirect_to action: :index
		else
			render 'new'
		end
	end

	def update
		@univercity = Univercity.find(params[:id])
		if @univercity.update(univ_params)
			redirect_to action: :index
		else
			render 'edit'
		end
	end

	def destroy
		@univercity = Univercity.find(params[:id])
		@univercity.destroy
		redirect_to univercities_path
	end

	private

		def univ_params
			params.require(:univercity).permit(:name,:city,:state,:country)
		end

end
