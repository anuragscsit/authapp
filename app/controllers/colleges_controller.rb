class CollegesController < ApplicationController
  
  def show
    @univercity = Univercity.friendly.find(params[:univercity_id])
    @college = @univercity.colleges.friendly.find(params[:id])
  end

end
