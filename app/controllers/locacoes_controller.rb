class LocacoesController < ApplicationController
  # GET /locacoes
  # GET /locacoes.json
  def index
    @locacoes = Locacao.order('created_at desc').paginate :page => params[:page], :per_page => 10

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @locacoes }
    end
  end

  # GET /locacoes/1
  # GET /locacoes/1.json
  def show
    @locacao = Locacao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @locacao }
    end
  end

  # GET /locacoes/new
  # GET /locacoes/new.json
  def new
    @locacao = Locacao.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @locacao }
    end
  end

  # GET /locacoes/1/edit
  def edit
    @locacao = Locacao.find(params[:id])
  end

  # POST /locacoes
  # POST /locacoes.json
  def create
    @locacao = Locacao.new(params[:locacao])

    respond_to do |format|
      if @locacao.save
        format.html { redirect_to @locacao, notice: 'Locacao was successfully created.' }
        format.json { render json: @locacao, status: :created, location: @locacao }
      else
        format.html { render action: "new" }
        format.json { render json: @locacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /locacoes/1
  # PUT /locacoes/1.json
  def update
    @locacao = Locacao.find(params[:id])

    respond_to do |format|
      if @locacao.update_attributes(params[:locacao])
        format.html { redirect_to @locacao, notice: 'Locacao was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @locacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locacoes/1
  # DELETE /locacoes/1.json
  def destroy
    @locacao = Locacao.find(params[:id])
    @locacao.destroy

    respond_to do |format|
      format.html { redirect_to locacoes_url }
      format.json { head :ok }
    end
  end
  
  def encerrar
    puts 'OKOKOKOKOKOKOKO'
  end
  
end
