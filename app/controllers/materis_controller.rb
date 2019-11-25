# import carrierwave
require 'carrierwave/orm/activerecord'

class MaterisController < ApplicationController
  before_action :set_materi, only: [:show, :edit, :update, :destroy]

  # GET /materis
  # GET /materis.json
  def index
    @materis = Materi.all
  end

  # GET /materis/1
  # GET /materis/1.json
  def show
  end

  # GET /materis/new
  def new
    @materi = Materi.new
  end

  # GET /materis/1/edit
  def edit
  end

  # POST /materis
  # POST /materis.json
  def create
    @materi = Materi.new(materi_params)
    @materi.namafile = materi_params[:namafile] # ambilnama file aja
    respond_to do |format|
      if @materi.save
        format.html { redirect_to @materi, notice: 'Materi was successfully created.' }
        format.json { render :show, status: :created, location: @materi }
      else
        format.html { render :new }
        format.json { render json: @materi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /materis/1
  # PATCH/PUT /materis/1.json
  def update
    @materi.namafile = materi_params[:namafile] # ambilnama file aja
    respond_to do |format|
      if @materi.update(materi_params)
        format.html { redirect_to @materi, notice: 'Materi was successfully updated.' }
        format.json { render :show, status: :ok, location: @materi }
      else
        format.html { render :edit }
        format.json { render json: @materi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /materis/1
  # DELETE /materis/1.json
  def destroy
    @materi.destroy
    respond_to do |format|
      format.html { redirect_to materis_url, notice: 'Materi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_materi
      @materi = Materi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def materi_params
      params.require(:materi).permit(:judul, :deskripsi, :namafile)
    end
end
