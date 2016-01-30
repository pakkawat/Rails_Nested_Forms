class ChefAttDebsController < ApplicationController
  before_action :set_chef_att_deb, only: [:show, :edit, :update, :destroy]

  # GET /chef_att_debs
  # GET /chef_att_debs.json
  def index
    @chef_att_debs = ChefAttDeb.all
  end

  # GET /chef_att_debs/1
  # GET /chef_att_debs/1.json
  def show
  end

  # GET /chef_att_debs/new
  def new
    @chef_att_deb = ChefAttDeb.new
  end

  # GET /chef_att_debs/1/edit
  def edit
  end

  # POST /chef_att_debs
  # POST /chef_att_debs.json
  def create
    @chef_att_deb = ChefAttDeb.new(chef_att_deb_params)

    respond_to do |format|
      if @chef_att_deb.save
        format.html { redirect_to @chef_att_deb, notice: 'Chef att deb was successfully created.' }
        format.json { render :show, status: :created, location: @chef_att_deb }
      else
        format.html { render :new }
        format.json { render json: @chef_att_deb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chef_att_debs/1
  # PATCH/PUT /chef_att_debs/1.json
  def update
    respond_to do |format|
      if @chef_att_deb.update(chef_att_deb_params)
        format.html { redirect_to @chef_att_deb, notice: 'Chef att deb was successfully updated.' }
        format.json { render :show, status: :ok, location: @chef_att_deb }
      else
        format.html { render :edit }
        format.json { render json: @chef_att_deb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chef_att_debs/1
  # DELETE /chef_att_debs/1.json
  def destroy
    @chef_att_deb.destroy
    respond_to do |format|
      format.html { redirect_to chef_att_debs_url, notice: 'Chef att deb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chef_att_deb
      @chef_att_deb = ChefAttDeb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chef_att_deb_params
      params.require(:chef_att_deb).permit(:room_category_id)
    end
end
