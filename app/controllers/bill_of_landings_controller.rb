class BillOfLandingsController < ApplicationController
skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]	

  def index
	if params.key?(:company_id)
		@company = Company.find_by(id: params[:company_id])
		@bill_of_landings = if @company
								@company.bill_of_landings.where(type_bl: 'Master')
							else
								{Text: 'Company  Not Found'}
							end	
	else
		@client = Client.find_by(id: params[:client_id])
		@bill_of_landings = if @client
								@client.bill_of_landings.where(type_bl: 'House')
							else
								{Text: 'Client  Not Found'}
							end		
	end						
	render json: @bill_of_landings
  end


  def show
	if params.key?(:company_id)
		@company = Company.find_by(id: params[:company_id])
		@bill_of_landings = if @company
								@company.bill_of_landings.where(type_bl: 'Master', id: params[:id])
							else
								{Text: 'Company  Not Found'}
							end	
	else
		@client = Client.find_by(id: params[:client_id])
		@bill_of_landings = if @client
								@client.bill_of_landings.where(type_bl: 'House', id: params[:id])
							else
								{Text: 'Client  Not Found'}
							end		
	end						
	render json: @bill_of_landings
  end

  def edit
	if params.key?(:company_id)	
		@company = Company.find_by(id: params[:company_id])
		@bill_of_landings = if @company
								@company.bill_of_landings.where(type_bl: 'Master', id: params[:id]).update(bill_of_landing_params)
							else
								{Text: 'Record  Not Found'}
							end					
	else
		@client = Client.find_by(id: params[:client_id])
		@bill_of_landings = if @client
								@client.bill_of_landings.where(type_bl: 'House', id: params[:id]).update(bill_of_landing_params)
							else
								{Text: 'Client  Not Found'}
							end		
	end						
	render json: @bill_of_landings	
  end


  def edit
	if params.key?(:company_id)	
		@company = Company.find_by(id: params[:company_id])
		@bill_of_landings = if @company
								@company.bill_of_landings.where(type_bl: 'Master', id: params[:id]).update(bill_of_landing_params)
							else
								{Text: 'Record  Not Found'}
							end					
	else
		@client = Client.find_by(id: params[:client_id])
		@bill_of_landings = if @client
								@client.bill_of_landings.where(type_bl: 'House', id: params[:id]).update(bill_of_landing_params)
							else
								{Text: 'Client  Not Found'}
							end		
	end						
	render json: @bill_of_landings	
  end



  # Hay  que  pasar desde la  forma  un parametro  key  = compania
  def create
 	if params.key?(:compania)	 	
      	@bill_of_landings = BillOfLanding.new(bill_of_landing_params)
      	@bill_of_landings.type_bl = "Master"
	else
      	@bill_of_landings = BillOfLanding.new(bill_of_landing_params)
      	@bill_of_landings.type_bl = "House"
	end	
	 @bill_of_landings.save
	 render json: @bill_of_landings			
  end  

  def update
 	if params.key?(:company_id)
 		@company = Company.find_by(id: params[:company_id])
		@bill_of_landings = if @company
								@company.bill_of_landings.where(type_bl: 'Master', id: params[:id]).update(bill_of_landing_params)
							else
								{Text: 'Record  Not Found'}
							end					
	else
		@client = Client.find_by(id: params[:client_id])
		@bill_of_landings = if @client
								@client.bill_of_landings.where(type_bl: 'House', id: params[:id]).update(bill_of_landing_params)
							else
								{Text: 'Client  Not Found'}
							end		
	end						
	render json: @bill_of_landings		
  end  

  def destroy
    @bill_of_landings  = BillOfLandings.find_by_id(params[:id])
   	if @bill_of_landings.destroy
        render json: @bill_of_landings
    else
      	render json: { text: 'bad request' }
    end
  end

  private
  def bill_of_landing_params
    params.permit(:id, :container_id, :client_id, :company_id, :type_bl , :compania)
  end


end
