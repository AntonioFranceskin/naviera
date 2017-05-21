class CompaniesController < ApplicationController
skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]

	def index
  		@companies = Company.all
  		# render json: @companies
	end

	def edit
    	@company  = Company.find_by_id(params[:id])
   		if @company.update(company_params)
            render json: @company 
    	else
      		render json: { text: 'bad request' }
    	end
	end

	def show
 		Company.find_by_id(params[:id])? @company  = Company.find_by_id(params[:id]) : @company = {Text: 'Company  Not Found'}
	end

  def create
      @company = Company.create!(company_params)
      render json: @company 
  end

  def update
    @company  = Company.find_by_id(params[:id])
   	if @company.update(company_params)
        render json: @company
    else
      	render json: { text: 'bad request' }
    end
  end
  
  def destroy
    @company  = Company.find_by_id(params[:id])
   	if @company.destroy
        render json: @company
    else
      	render json: { text: 'bad request' }
    end
  end

  private

  def company_params
    params.permit(:id, :company_name, :rif, :status, :type_company)
  end

end
