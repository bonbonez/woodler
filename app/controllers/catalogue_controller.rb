# encoding: utf-8

class CatalogueController < ApplicationController

  def show
    if params[:category]
        @category = Category.find_by(url: params[:category])
    else
        @category = Category.first
    end
  end

end