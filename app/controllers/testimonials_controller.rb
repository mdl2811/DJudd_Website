class CategoriesController < ApplicationController
  before_action :set_category, except: [:index, :new, :create]
  def index
    @testimonials = Testimonials.all
  end

  def new
    @testimonials = Testimonials.new
  end

  def create
    @testimonials = Testimonials.new(user_params)
    if @testimonials.save
      redirect_to testimonials_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @testimonials.update(testimonials_params)
      redirect_to testimonials_path
    else
      render :edit
    end
  end

  def destroy
    @testimonials.destroy
    redirect_to testimonials_path
  end

  private

  def set_category
    @testimonials = Testimonials.find(params[:id])
  end

  def category_params
    params.require(:user).permit(:name)
  end
