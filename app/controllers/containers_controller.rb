class ContainersController < ApplicationController


  def index
  	  @company = Company.find_by_id(params[:company_id])
  	  @bill_of_landings = @company.bill_of_landings.where(type_bl: 'Master').find_by_id(params[:bill_of_landing_id])
	  @containers = if @bill_of_landings
	  					@bill_of_landings.container
	  				else
	  					{Text: 'Containers  Not Found'}
	  				end						
  	   render json: @containers
  end

end
