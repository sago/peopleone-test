class HomeController < ApplicationController

  def index
    @catalogues = Catalogue.all.map(&:name)
    @catSelected = params[:catalogue] || nil
    @areaSelected = Area.where(name: params[:area]).first if params[:area].present?
    @itemSelected = Item.where(name: params[:item]).first if params[:item].present?
  end

end
