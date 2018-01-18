class MealsController < ApplicationController
  before_action :set_meal, only: [:show, :edit, :update, :destroy]

  def index
    @meals = Meal.all
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    @meal.user_id = current_user.id

    if @meal.save
      redirect_to @meal, notice: "Your post was created successfully."
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @meal.update(meal_params)
      redirect_to @meal, notice: 'Your meal was updated successfully'
    else
      render :edit
    end
  end

  def destroy
    @meal.delete
    redirect_to meals_path, notice: 'Your meal was deleted successfully'
  end

  def show
    @meal = Meal.find(params[:id])
  end

  private
    def meal_params
      params.require(:meal).permit(:date, :title, :description, :quantity, :category, :location_address)
    end

    def set_meal
      @meal = Meal.find(params[:id])
    end

end
