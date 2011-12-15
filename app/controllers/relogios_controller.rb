class RelogiosController < ApplicationController
  # GET /relogios
  # GET /relogios.json
  def index
    @relogios = Relogio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @relogios }
    end
  end

  # GET /relogios/1
  # GET /relogios/1.json
  def show
    @relogio = Relogio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @relogio }
    end
  end

  # GET /relogios/new
  # GET /relogios/new.json
  def new
    @relogio = Relogio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @relogio }
    end
  end

  # GET /relogios/1/edit
  def edit
    @relogio = Relogio.find(params[:id])
  end

  # POST /relogios
  # POST /relogios.json
  def create
    @relogio = Relogio.new(params[:relogio])

    respond_to do |format|
      if @relogio.save
        format.html { redirect_to @relogio, notice: 'Relogio was successfully created.' }
        format.json { render json: @relogio, status: :created, location: @relogio }
      else
        format.html { render action: "new" }
        format.json { render json: @relogio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /relogios/1
  # PUT /relogios/1.json
  def update
    @relogio = Relogio.find(params[:id])

    respond_to do |format|
      if @relogio.update_attributes(params[:relogio])
        format.html { redirect_to @relogio, notice: 'Relogio was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @relogio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relogios/1
  # DELETE /relogios/1.json
  def destroy
    @relogio = Relogio.find(params[:id])
    @relogio.destroy

    respond_to do |format|
      format.html { redirect_to relogios_url }
      format.json { head :ok }
    end
  end
end
