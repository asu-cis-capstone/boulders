class BeerMakersController < ApplicationController
  before_action :set_beer_maker, only: [:show, :edit, :update, :destroy]

  # GET /beer_makers
  # GET /beer_makers.json
  def index
    @beer_makers = BeerMaker.all
  end

  # GET /beer_makers/1
  # GET /beer_makers/1.json
  def show
  end

  # GET /beer_makers/new
  def new
    @beer_maker = BeerMaker.new
  end

  # GET /beer_makers/1/edit
  def edit
  end

  # POST /beer_makers
  # POST /beer_makers.json
  def create
    @beer_maker = BeerMaker.new(beer_maker_params)

    respond_to do |format|
      if @beer_maker.save
        format.html { redirect_to @beer_maker, notice: 'Beer maker was successfully created.' }
        format.json { render :show, status: :created, location: @beer_maker }
      else
        format.html { render :new }
        format.json { render json: @beer_maker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beer_makers/1
  # PATCH/PUT /beer_makers/1.json
  def update
    respond_to do |format|
      if @beer_maker.update(beer_maker_params)
        format.html { redirect_to @beer_maker, notice: 'Beer maker was successfully updated.' }
        format.json { render :show, status: :ok, location: @beer_maker }
      else
        format.html { render :edit }
        format.json { render json: @beer_maker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beer_makers/1
  # DELETE /beer_makers/1.json
  def destroy
    @beer_maker.destroy
    respond_to do |format|
      format.html { redirect_to beer_makers_url, notice: 'Beer maker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beer_maker
      @beer_maker = BeerMaker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beer_maker_params
      params.require(:beer_maker).permit(:name, :location, :date_of_founding)
    end
end
