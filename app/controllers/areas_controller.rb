class AreasController < ApplicationController
  def index
      @areas = Area.all
  end

  def new
      @area = Area.new
  end

  def create
      @area = Area.create(
          codigo_area: params[:area][:codigo_area],
          nombre_area: params[:area][:nombre_area])
      if @area.save 
          redirect_to areas_path
      else 
          render :new 
      end
  end

  def edit
      
  end

  def update
      @area =  Area.find(params[:codigo_area])
      Area.update(
          codigo_area: params[:codigo_area],
          nombre_area: params[:nombre_area]
      )
  end


  def show
      @area = Area.find(params[:id])
  end

  def destroy
      @area = Area.find(params[:id])
      @area.destroy
      redirect_to areas_path

  end
end
