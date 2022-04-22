require "net/http"
require "uri"

class ImGetRequestsController < ApplicationController
  before_action :set_im_get_request, only: %i[ show edit update destroy ]

  # GET /im_get_requests or /im_get_requests.json
  def index
    @im_get_requests = ImGetRequest.all
  end

  # GET /im_get_requests/1 or /im_get_requests/1.json
  def show
  end

  # GET /im_get_requests/new
  def new
    @im_get_request = ImGetRequest.new
  end

  # GET /im_get_requests/1/edit
  def edit
  end

  # POST /im_get_requests or /im_get_requests.json
  def create
    @im_get_request = ImGetRequest.new(im_get_request_params)

    respond_to do |format|
      if @im_get_request.save
        format.html { redirect_to im_get_request_url(@im_get_request), notice: "Im get request was successfully created." }
        format.json { render :show, status: :created, location: @im_get_request }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @im_get_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /im_get_requests/1 or /im_get_requests/1.json
  def update
    respond_to do |format|
      if @im_get_request.update(im_get_request_params)
        format.html { redirect_to im_get_request_url(@im_get_request), notice: "Im get request was successfully updated." }
        format.json { render :show, status: :ok, location: @im_get_request }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @im_get_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /im_get_requests/1 or /im_get_requests/1.json
  def destroy
    @im_get_request.destroy

    respond_to do |format|
      format.html { redirect_to im_get_requests_url, notice: "Im get request was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_im_get_request
      @im_get_request = ImGetRequest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def im_get_request_params
      params.require(:im_get_request).permit(:username, :pwd, :prodID, :tokenID)
    end
end
