class DessertsController < ApplicationController

  def index
    @desserts = Dessert.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    dessert = Dessert.new(name: params[:name], portions: params[:portions])
    dessert.save
    redirect_to "/desserts"
  end

  def show
    @dessert = Dessert.find_by(id: params[:id])
    render "show.html.erb"
  end

  def edit
    @dessert = Dessert.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    @dessert = Dessert.find_by(id: params[:id])
    @dessert.assign_attributes(name: params[:name], portions: params[:portions])
    @dessert.save
    redirect_to "/desserts/#{@dessert.id}"
  end



end
