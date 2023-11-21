class HogesController < ApplicationController
  before_action :set_hoge, only: [:show, :edit, :update, :destroy]

  # GET /hoges
  def index
    @hoges = Hoge.all
  end

  # GET /hoges/1
  def show
  end

  # GET /hoges/new
  def new
    @hoge = Hoge.new
  end

  # GET /hoges/1/edit
  def edit
  end

  # POST /hoges
  def create
    @hoge = Hoge.new(hoge_params)

    if @hoge.save
      redirect_to @hoge, notice: 'Hoge was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /hoges/1
  def update
    if @hoge.update(hoge_params)
      redirect_to @hoge, notice: 'Hoge was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /hoges/1
  def destroy
    @hoge.destroy
    redirect_to hoges_url, notice: 'Hoge was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hoge
      @hoge = Hoge.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def hoge_params
      params.require(:hoge).permit(:title, :content)
    end
end
