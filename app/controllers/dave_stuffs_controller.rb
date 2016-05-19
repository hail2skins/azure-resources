class DaveStuffsController < ApplicationController
  before_action :set_dave_stuff, only: [:show, :edit, :update, :destroy]

  # GET /dave_stuffs
  # GET /dave_stuffs.json
  def index
    @dave_stuffs = DaveStuff.all
  end

  # GET /dave_stuffs/1
  # GET /dave_stuffs/1.json
  def show
  end

  # GET /dave_stuffs/new
  def new
    @dave_stuff = DaveStuff.new
  end

  # GET /dave_stuffs/1/edit
  def edit
  end

  # POST /dave_stuffs
  # POST /dave_stuffs.json
  def create
    @dave_stuff = DaveStuff.new(dave_stuff_params)

    respond_to do |format|
      if @dave_stuff.save
        format.html { redirect_to @dave_stuff, notice: 'Dave stuff was successfully created.' }
        format.json { render :show, status: :created, location: @dave_stuff }
      else
        format.html { render :new }
        format.json { render json: @dave_stuff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dave_stuffs/1
  # PATCH/PUT /dave_stuffs/1.json
  def update
    respond_to do |format|
      if @dave_stuff.update(dave_stuff_params)
        format.html { redirect_to @dave_stuff, notice: 'Dave stuff was successfully updated.' }
        format.json { render :show, status: :ok, location: @dave_stuff }
      else
        format.html { render :edit }
        format.json { render json: @dave_stuff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dave_stuffs/1
  # DELETE /dave_stuffs/1.json
  def destroy
    @dave_stuff.destroy
    respond_to do |format|
      format.html { redirect_to dave_stuffs_url, notice: 'Dave stuff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dave_stuff
      @dave_stuff = DaveStuff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dave_stuff_params
      params.require(:dave_stuff).permit(:saying)
    end
end
