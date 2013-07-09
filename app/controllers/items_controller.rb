class ItemsController < ApplicationController
  def new
    # raise params.inspect
    @list = List.find(params[:format])
  end

  def show
  #   raise params.inspect
    @item = Item.find(params[:id])
  end

  def create
    # raise params.inspect
    @item = Item.new(:name => params[:item][:name])
    @list = List.find(params[:list_id])
    @item.lists << @list

    @item.save

    redirect_to @list
  end
end
