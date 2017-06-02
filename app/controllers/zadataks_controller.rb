class ZadataksController < ApplicationController
  before_action :set_zadatak, only: [:show, :edit, :update, :destroy]

  # GET /zadataks
  # GET /zadataks.json
  
  def index
    if params[:tag]
      @zadataks = Zadatak.tagged_with(params[:tag])
    else
      @zadataks = Zadatak.all
    end
  end

  # GET /zadataks/1
  # GET /zadataks/1.json
  def show
  end

  # GET /zadataks/new
  def new
    @zadatak = Zadatak.new
  end

  # GET /zadataks/1/edit
  def edit
  end

  # POST /zadataks
  # POST /zadataks.json
  def create
    @zadatak = Zadatak.new(zadatak_params)

    respond_to do |format|
      if @zadatak.save
        format.html { redirect_to @zadatak, notice: 'Zadatak was successfully created.' }
        format.json { render :show, status: :created, location: @zadatak }
      else
        format.html { render :new }
        format.json { render json: @zadatak.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zadataks/1
  # PATCH/PUT /zadataks/1.json
  def update
    respond_to do |format|
      if @zadatak.update(zadatak_params)
        format.html { redirect_to @zadatak, notice: 'Zadatak was successfully updated.' }
        format.json { render :show, status: :ok, location: @zadatak }
      else
        format.html { render :edit }
        format.json { render json: @zadatak.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zadataks/1
  # DELETE /zadataks/1.json
  def destroy
    @zadatak.destroy
    respond_to do |format|
      format.html { redirect_to zadataks_url, notice: 'Zadatak was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zadatak
      @zadatak = Zadatak.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zadatak_params
      params.require(:zadatak).permit(:problem, :solution, :all_tags)
    end
end
