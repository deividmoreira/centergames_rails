class MesasController < ApplicationController
  # GET /mesas
  # GET /mesas.json
  def index
    @mesas = Mesa.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mesas }
    end
  end

  # GET /mesas/1
  # GET /mesas/1.json
  def show
    @mesa = Mesa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mesa }
    end
  end

  # GET /mesas/new
  # GET /mesas/new.json
  def new
    @mesa = Mesa.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mesa }
    end
  end

  # GET /mesas/1/edit
  def edit
    @mesa = Mesa.find(params[:id])
  end

  # POST /mesas
  # POST /mesas.json
  def create
    @mesa = Mesa.new(params[:mesa])
    
    respond_to do |format|
      if @mesa.save
        format.html { redirect_to @mesa, notice: 'Mesa criada com sucesso.', classe: 'message-sucess' }
        format.json { render json: @mesa, status: :created, location: @mesa }
      else
        format.html { render action: "new" }
        format.json { render json: @mesa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mesas/1
  # PUT /mesas/1.json
  def update
    @mesa = Mesa.find(params[:id])

    respond_to do |format|
      if @mesa.update_attributes(params[:mesa])
        format.html { redirect_to @mesa, notice: 'Mesa was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @mesa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mesas/1
  # DELETE /mesas/1.json
  def destroy
    @mesa = Mesa.find(params[:id])
    @mesa.destroy

    respond_to do |format|
      format.html { redirect_to mesas_url }
      format.json { head :ok }
    end
  end
end
