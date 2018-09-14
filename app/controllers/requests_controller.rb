class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :edit, :update, :destroy]

  # GET /requests
  # GET /requests.json
  def index
    @requests = Request.all
    filtering_params.each do |key, value|
      @requests = @requests.public_send(key, value) if value.present?
    end
  end

  # GET /requests/1
  # GET /requests/1.json
  def show
  end

  # GET /requests/new
  def new
    @request = Request.new
  end

  # GET /requests/1/edit
  def edit
    not_authorised and return unless current_user.can_edit?(@request)
  end

  # POST /requests
  # POST /requests.json
  def create
    @request = Request.new(request_params)
    @request.owner = current_user.username
    @request.email = current_user.email

    respond_to do |format|
      if @request.save
        format.html { redirect_to @request, notice: 'Request was successfully created.' }
        format.json { render :show, status: :created, location: @request }
      else
        format.html { render :new }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requests/1
  # PATCH/PUT /requests/1.json
  def update
    not_authorised and return unless current_user.can_edit?(@request)
    respond_to do |format|
      if @request.update(request_params)
        format.html { redirect_to @request, notice: 'Request was successfully updated.' }
        format.json { render :show, status: :ok, location: @request }
      else
        format.html { render :edit }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requests/1
  # DELETE /requests/1.json
  def destroy
    not_authorised and return unless current_user.can_delete?(@request)
    @request.destroy
    respond_to do |format|
      format.html { redirect_to requests_url, notice: 'Request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def filtering_params
    params.slice(:title, :owner, :cost)
  end

    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    def not_authorised
      flash[:notice] = "You are not authorised!"
      redirect_to moves_path
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_params
      params.require(:request).permit(:title, :owner, :email, :description, :cost, :size, :urgency, :from_address, :from_city, :from_state, :to_address, :to_city, :to_state)
    end
end
