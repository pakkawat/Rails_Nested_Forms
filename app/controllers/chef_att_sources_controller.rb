class ChefAttSourcesController < ApplicationController
  before_action :set_chef_att_source, only: [:show, :edit, :update, :destroy]

  # GET /chef_att_sources
  # GET /chef_att_sources.json
  def index
    @chef_att_sources = ChefAttSource.all
  end

  # GET /chef_att_sources/1
  # GET /chef_att_sources/1.json
  def show
  end

  # GET /chef_att_sources/new
  def new
    @chef_att_source = ChefAttSource.new
  end

  # GET /chef_att_sources/1/edit
  def edit
  end

  # POST /chef_att_sources
  # POST /chef_att_sources.json
  def create
    @chef_att_source = ChefAttSource.new(chef_att_source_params)

    respond_to do |format|
      if @chef_att_source.save
        format.html { redirect_to @chef_att_source, notice: 'Chef att source was successfully created.' }
        format.json { render :show, status: :created, location: @chef_att_source }
      else
        format.html { render :new }
        format.json { render json: @chef_att_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chef_att_sources/1
  # PATCH/PUT /chef_att_sources/1.json
  def update
    respond_to do |format|
      if @chef_att_source.update(chef_att_source_params)
        format.html { redirect_to @chef_att_source, notice: 'Chef att source was successfully updated.' }
        format.json { render :show, status: :ok, location: @chef_att_source }
      else
        format.html { render :edit }
        format.json { render json: @chef_att_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chef_att_sources/1
  # DELETE /chef_att_sources/1.json
  def destroy
    @chef_att_source.destroy
    respond_to do |format|
      format.html { redirect_to chef_att_sources_url, notice: 'Chef att source was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chef_att_source
      @chef_att_source = ChefAttSource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chef_att_source_params
      params.require(:chef_att_source).permit(:room_category_id)
    end
end
