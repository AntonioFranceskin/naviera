class ShipsController < ApplicationController
  

  def index
    # render json: params
    render json: params["params1"]
  	#   @company = Company.find_by_id(params[:company_id])
	  # @ships = if @company
	  # 				@company.ships
	  # 			else
	  # 				{Text: 'Company  Not Found'}
	  # 			end				
  	#    render json: @ships 
  end

  def edit
  end

  def show
        render json: params
  end

  def preview
  	  render json: params[:company_id]	
  	#   @company = Company.find_by_id(params[:company_id])
	  # @ships = if @company
	  # 				@company.ships
	  # 			else
	  # 				{Text: 'Company  Not Found'}
	  # 			end
	  # render json: @ships 			
  end

end
