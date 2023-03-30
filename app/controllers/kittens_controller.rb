class KittensController < ApplicationController
  before_action :set_kitten, only: [:show, :edit, :update, :destroy]

  def index
    @kittens = Kitten.all
  end

  def new
    @kitten = Kitten.new
  end

  def create
    @kitten = Kitten.new(kitten_params)

    if @kitten.save
      redirect_to @kitten
      success_message("created")
    else
      render :new, status: :unprocessable_entity
      error_message
    end
  end

  def show; end

  def edit; end

  def update
    if @kitten.update(kitten_params)
      redirect_to @kitten
      success_message("updated")
    else
      render :edit, status: :unprocessable_entity
      error_message
    end
  end

  def destroy
    @kitten.destroy
    redirect_to '/kittens'
    success_message("deleted")
  end

  private
    def kitten_params
      params.require(:kitten).permit(:name, :age, :cuteness, :softness)
    end

    def set_kitten
      @kitten = Kitten.find(params[:id])
    end

    def success_message(message)
      flash[:sucess] = "You've successfully #{message} your kitten!"
    end

    def error_message
      flash[:error].now = "Check your form dum dum"
    end
end
