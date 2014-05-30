# encoding: utf-8

class ItemsController < ApplicationController

  def create
    @item = Item.create( item_params )

    redirect_to '/'
  end

  private

  def item_params
    params.require(:item).permit(:picture)
  end

end