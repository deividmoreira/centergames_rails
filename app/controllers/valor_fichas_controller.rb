class ValorFichasController < ApplicationController
  # GET /valor_fichas
  # GET /valor_fichas.json
  def index
    if params.include? :valor_ficha
      @valor_fichas = ValorFicha.where("descricao like ? ","%#{params[:valor_ficha][:descricao].upcase}%")
                                                              .paginate(:page => params[:page] , :per_page => 10).order(:descricao)
    else 
      @valor_fichas = ValorFicha.all
      #.paginate :page => params[:page], :per_page => 10      
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @valor_fichas }
      format.js
    end
  end

  # GET /valor_fichas/1
  # GET /valor_fichas/1.json
  def show
    @valor_ficha = ValorFicha.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @valor_ficha }
    end
  end

  # GET /valor_fichas/new
  # GET /valor_fichas/new.json
  def new
    @valor_ficha = ValorFicha.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @valor_ficha }
    end
  end

  # GET /valor_fichas/1/edit
  def edit
    @valor_ficha = ValorFicha.find(params[:id])
  end

  # POST /valor_fichas
  # POST /valor_fichas.json
  def create
    @valor_ficha = ValorFicha.new(params[:valor_ficha])

    respond_to do |format|
      if @valor_ficha.save
        format.html { redirect_to @valor_ficha, notice: 'Valor ficha was successfully created.' }
        format.json { render json: @valor_ficha, status: :created, location: @valor_ficha }
      else
        format.html { render action: "new" }
        format.json { render json: @valor_ficha.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /valor_fichas/1
  # PUT /valor_fichas/1.json
  def update
    @valor_ficha = ValorFicha.find(params[:id])

    respond_to do |format|
      if @valor_ficha.update_attributes(params[:valor_ficha])
        format.html { redirect_to @valor_ficha, notice: 'Valor ficha was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @valor_ficha.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /valor_fichas/1
  # DELETE /valor_fichas/1.json
  def destroy
    @valor_ficha = ValorFicha.find(params[:id])
    @valor_ficha.destroy

    respond_to do |format|
      format.html { redirect_to valor_fichas_url }
      format.json { head :ok }
    end
  end
end
