class CavesController < AdminController
  before_action :set_cafe, only: [:show, :edit, :update, :destroy]

  # GET /caves
  # GET /caves.json
  def index
    @caves = Cafe.all
  end

  # GET /caves/1
  # GET /caves/1.json
 

  # GET /caves/new
  def new
    @cafe = Cafe.new
  end

  # GET /caves/1/edit
 

  # POST /caves
  # POST /caves.json
  def create
    @cafe = Cafe.new(cafe_params)

    respond_to do |format|
      if @cafe.save
       # upload_image

        format.html { redirect_to @cafe, notice: 'Cafe was successfully created.' }
        format.json { render :show, status: :created, location: @cafe }
      else
        format.html { render :new }
        format.json { render json: @cafe.errors, status: :unprocessable_entity }
      end
    end
  end
  # def upload_image
  #  uploaded_file = params[:cafe][:picture]
  #     unless uploaded_file.nil?
  #       new_file_path = Rails.root.join('public', 'uploads', @cafe.id.to_s)
  #       File.open(new_file_path, 'wb') do |file|
  #         file.write uploaded_file.read
  #       end
  #     end
  # end
  # PATCH/PUT /caves/1
  # PATCH/PUT /caves/1.json
  def update
    respond_to do |format|
      if @cafe.update(cafe_params)
        # upload_image
        format.html { redirect_to @cafe, notice: 'Cafe was successfully updated.' }
        format.json { render :show, status: :ok, location: @cafe }
      else
        format.html { render :edit }
        format.json { render json: @cafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caves/1
  # DELETE /caves/1.json
  def destroy
    @cafe.destroy
    respond_to do |format|
      format.html { redirect_to caves_url, notice: 'Cafe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cafe
      @cafe = Cafe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cafe_params
      params.require(:cafe).permit(:title, :image, :description)
    end
end
