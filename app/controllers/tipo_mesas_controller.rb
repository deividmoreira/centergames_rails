class TipoMesasController < ApplicationController
  # GET /tipo_mesas
  # GET /tipo_mesas.json
  def index
    @tipo_mesas = TipoMesa.paginate :page => params[:page], :per_page => 10
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipo_mesas }
    end
  end

  # GET /tipo_mesas/1
  # GET /tipo_mesas/1.json
  def show
    @tipo_mesa = TipoMesa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_mesa }
    end
  end

  # GET /tipo_mesas/new
  # GET /tipo_mesas/new.json
  def new
    @tipo_mesa = TipoMesa.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_mesa }
    end
  end

  # GET /tipo_mesas/1/edit
  def edit
    @tipo_mesa = TipoMesa.find(params[:id])
  end

  # POST /tipo_mesas
  # POST /tipo_mesas.json
  def create
    @tipo_mesa = TipoMesa.new(params[:tipo_mesa])

    respond_to do |format|
      if @tipo_mesa.save
        format.html { redirect_to @tipo_mesa, notice: 'Tipo mesa was successfully created.' }
        format.json { render json: @tipo_mesa, status: :created, location: @tipo_mesa }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_mesa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_mesas/1
  # PUT /tipo_mesas/1.json
  def update
    @tipo_mesa = TipoMesa.find(params[:id])

    respond_to do |format|
      if @tipo_mesa.update_attributes(params[:tipo_mesa])
        format.html { redirect_to @tipo_mesa, notice: 'Tipo mesa was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_mesa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_mesas/1
  # DELETE /tipo_mesas/1.json
  def destroy
    @tipo_mesa = TipoMesa.find(params[:id])
    @tipo_mesa.destroy

    respond_to do |format|
      format.html { redirect_to tipo_mesas_url }
      format.json { head :ok }
    end
  end
end
