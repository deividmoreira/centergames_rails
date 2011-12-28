class RotaController < ApplicationController
  # GET /rota
  # GET /rota.json
  def index
    if params.include? :rota   
      @rotas = Rota.where("nome like %?%", "#{params[:rota][:nome].upcase}")
                                  .paginate(:page => params[:page] , :per_page => 10).order(:nome)
    else 
      @rotas = Rota.paginate :page => params[:page], :per_page => 10      
    end 
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rota }
      format.js
    end
  end

  # GET /rota/1
  # GET /rota/1.json
  def show
    @rota = Rota.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rota }
    end
  end

  # GET /rota/new
  # GET /rota/new.json
  def new
    @rota = Rota.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rota }
    end
  end

  # GET /rota/1/edit
  def edit
    @rota = Rota.find(params[:id])
  end

  # POST /rota
  # POST /rota.json
  def create
    @rota = Rota.new(params[:rota])

    respond_to do |format|
      if @rota.save
        format.html { redirect_to @rota, notice: 'rota was successfully created.' }
        format.json { render json: @rota, status: :created, location: @rota }
      else
        format.html { render action: "new" }
        format.json { render json: @rota.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rota/1
  # PUT /rota/1.json
  def update
    @rota = rota.find(params[:id])

    respond_to do |format|
      if @rota.update_attributes(params[:rota])
        format.html { redirect_to @rota, notice: 'rota was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @rota.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rota/1
  # DELETE /rota/1.json
  def destroy
    @rota = rota.find(params[:id])
    @rota.destroy

    respond_to do |format|
      format.html { redirect_to rota_url }
      format.json { head :ok }
    end
  end
end
