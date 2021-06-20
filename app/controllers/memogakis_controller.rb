class MemogakisController < ApplicationController
  before_action :set_memogaki, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]

  def index
    @memogakis = Memogaki.includes(:user).order("created_at DESC")
  end

  def new
    @memogaki = Memogaki.new
  end

  def create
    Memogaki.create(memogaki_params)
  end

  def destroy
    memogaki = Memogaki.find(params[:id])
    memogaki.destroy
  end

  def edit
  end

  def update
    memogaki = Memogaki.find(params[:id])
    memogaki.update(memogaki_params)
  end

  def show
    @plan = Plan.new
    @plans = @memogaki.plans.includes(:user)
  end

  private

  def memogaki_params
    params.require(:memogaki).permit(:year, :month, :day, :title, :text, :text_two, :text_three, :text_four, :text_five, :text_six).merge(user_id: current_user.id)
  end

  def set_memogaki
    @memogaki = Memogaki.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
