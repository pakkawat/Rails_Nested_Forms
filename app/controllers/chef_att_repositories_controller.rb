class ChefAttRepositoriesController < ApplicationController
  before_action :set_chef_att_repository, only: [:show, :edit, :update, :destroy]

  # GET /chef_att_repositories
  # GET /chef_att_repositories.json
  def index
    @chef_att_repositories = ChefAttRepository.all
  end

  # GET /chef_att_repositories/1
  # GET /chef_att_repositories/1.json
  def show
  end

  # GET /chef_att_repositories/new
  def new
    @chef_att_repository = ChefAttRepository.new
  end

  # GET /chef_att_repositories/1/edit
  def edit
  end

  # POST /chef_att_repositories
  # POST /chef_att_repositories.json
  def create
    @chef_att_repository = ChefAttRepository.new(chef_att_repository_params)

    respond_to do |format|
      if @chef_att_repository.save
        format.html { redirect_to @chef_att_repository, notice: 'Chef att repository was successfully created.' }
        format.json { render :show, status: :created, location: @chef_att_repository }
      else
        format.html { render :new }
        format.json { render json: @chef_att_repository.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chef_att_repositories/1
  # PATCH/PUT /chef_att_repositories/1.json
  def update
    respond_to do |format|
      if @chef_att_repository.update(chef_att_repository_params)
        format.html { redirect_to @chef_att_repository, notice: 'Chef att repository was successfully updated.' }
        format.json { render :show, status: :ok, location: @chef_att_repository }
      else
        format.html { render :edit }
        format.json { render json: @chef_att_repository.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chef_att_repositories/1
  # DELETE /chef_att_repositories/1.json
  def destroy
    @chef_att_repository.destroy
    respond_to do |format|
      format.html { redirect_to chef_att_repositories_url, notice: 'Chef att repository was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chef_att_repository
      @chef_att_repository = ChefAttRepository.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chef_att_repository_params
      params.require(:chef_att_repository).permit(:room_category_id)
    end
end
