class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
  #   raise params.inspect
    @list = List.find(params[:id])
  end

  # def new
  # end

  def create
    # raise params[:list][:items].inspect
    @list = List.new(:name => params[:list][:name])
    items = params[:list][:items].split(",")
    items.each do |item|
      @list.items << Item.new(:name => item)
    end
    @list.save

    redirect_to @list
  end
end
