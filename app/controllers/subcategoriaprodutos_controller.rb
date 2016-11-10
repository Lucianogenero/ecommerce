class SubcategoriaprodutosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_subcategoriaproduto, only: [:show, :edit, :update, :destroy]

  # GET /subcategoriaprodutos
  # GET /subcategoriaprodutos.json
  def index
    @subcategoriaprodutos = Subcategoriaproduto.all
  end

  # GET /subcategoriaprodutos/1
  # GET /subcategoriaprodutos/1.json
  def show
  end

  # GET /subcategoriaprodutos/new
  def new
    @subcategoriaproduto = Subcategoriaproduto.new
  end

  # GET /subcategoriaprodutos/1/edit
  def edit
  end

  # POST /subcategoriaprodutos
  # POST /subcategoriaprodutos.json
  def create
    @subcategoriaproduto = Subcategoriaproduto.new(subcategoriaproduto_params)

    respond_to do |format|
      if @subcategoriaproduto.save
        format.html { redirect_to @subcategoriaproduto, notice: 'Subcategoriaproduto was successfully created.' }
        format.json { render :show, status: :created, location: @subcategoriaproduto }
      else
        format.html { render :new }
        format.json { render json: @subcategoriaproduto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subcategoriaprodutos/1
  # PATCH/PUT /subcategoriaprodutos/1.json
  def update
    respond_to do |format|
      if @subcategoriaproduto.update(subcategoriaproduto_params)
        format.html { redirect_to @subcategoriaproduto, notice: 'Subcategoriaproduto was successfully updated.' }
        format.json { render :show, status: :ok, location: @subcategoriaproduto }
      else
        format.html { render :edit }
        format.json { render json: @subcategoriaproduto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subcategoriaprodutos/1
  # DELETE /subcategoriaprodutos/1.json
  def destroy
    @subcategoriaproduto.destroy
    respond_to do |format|
      format.html { redirect_to subcategoriaprodutos_url, notice: 'Subcategoriaproduto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subcategoriaproduto
      @subcategoriaproduto = Subcategoriaproduto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subcategoriaproduto_params
      params.require(:subcategoriaproduto).permit(:nome, :categoriaproduto_id)
    end
end
