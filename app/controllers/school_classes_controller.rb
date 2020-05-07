class SchoolClassesController < ApplicationController
  before_action :set_school_class, only: [:show, :edit, :update, :destroy]

  def index
    @school_classes = SchoolClass.all
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(school_class_params)
    if @school_class.save
      redirect_to school_class_path(@school_class)
    else
      render 'new'
    end
  end

  def show

  end

  def edit

  end

  def update
    if @school_class.update(school_class_params)
      redirect_to school_class_path(@school_class)
    else
      render 'new'
    end
  end

  def destroy
    @school_class.destroy
    redirect_to school_classes_path
  end

  private

  def set_school_class
    @school_class = SchoolClass.find(params[:id])
  end

  def school_class_params
    params.require(:school_class).permit(:title, :room_number)
  end

end