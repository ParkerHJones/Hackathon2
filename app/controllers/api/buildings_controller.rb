before_action :set_building, except: [:index, :create]
  def index
    render json: current_user.buildings
  end
  def show
    render json: @building
  end
  def create
    @building = current_user.buildings.new(building_params)
    if @building.save
      render json: @building
    else
      render json: { errors: @building.errors }, status: :unprocessable_entity
    end
  end
  def update
    if @building.update(building_params)
      render json: @building
    else
      render json: { errors: @building.errors }, status: :unprocessable_entity
    end
  end
  def destroy
    @building.destroy
    render json: { message: ‘building Released’}
  end
  private
    def set_building
      @building = current_user.buildings.find(params[:id])
    end
    def building_params
      params.require(:building).permit(:year_built, :type, :address)
    end
end
