class ClientsController < ApplicationController
skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]

	def index
  		@clients = Client.all
  		# render json: @clients
	end

	def edit
    	@client  = Client.find_by_id(params[:id])
   		if @client.update(client_params)
            render json: @client 
    	else
      		render json: { text: 'bad request' }
    	end
	end

	def show
 		Client.find_by_id(params[:id])? @client  = Client.find_by_id(params[:id]) : @client = {Text: 'Client Not Found'}
	    # render json: @client 
	end



    def create
      	@client = Client.create!(client_params)
      	render json: @client 
    end

    def update
    	@client  = Client.find_by_id(params[:id])
   		if @client.update(client_params)
            render json: @client
    	else
      		render json: { text: 'bad request' }
    	end
    end

  
    def destroy
    	@client  = Client.find_by_id(params[:id])
   		if @client.destroy
            render json: @client
    	else
      		render json: { text: 'bad request' }
    	end
    end



    private

    def client_params
      params.permit(:id, :name, :lastname, :rif, :type_client)
    end

end
