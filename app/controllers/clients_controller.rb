class ClientsController < ApplicationController
  respond_to :html

  def index
    @clients = Client
    @clients = @clients.search(params[:query]) if params[:query] 
    @clients = @clients.page(params[:page]).per(50)
    respond_with(@clients)
  end

  def show
    @client = Client.find(params[:id])
    respond_with(@client)
  end

  def new
    @client = Client.new
    respond_with(@client)
  end

  def edit
    @client = Client.find(params[:id])
    respond_with(@client)
  end

  def create
    @client = Client.new(params[:client])
    @client.save!
    redirect_to(@client, :notice => "Client was successfully created.")
  rescue ActiveRecord::RecordInvalid
    render(:new)
  end

  def update
    @client = Client.find(params[:id])
    @client.update_attributes!(params[:client])
    redirect_to(@client, :notice => "Client was successfully updated.")
  rescue ActiveRecord::RecordInvalid
    render(:edit)
  end

  def destroy
    @client = Client.find(params[:id])
    @client.destroy
    redirect_to(clients_path)
  end
end
