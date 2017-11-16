class HomeController < ApplicationController

  def index
    @catalogues = Catalogue.all.map(&:name)
    @catSelected = params[:catalogue] || nil
    @areaSelected = Area.where(name: params[:area]).first if params[:area].present?
    @itemSelected = Item.where(name: params[:item]).first if params[:item].present?
  end

  def search
    if params[:search].present?
      @catalogues = Catalogue.where("name ilike :search", search: "%#{params[:search]}%")
      @areas =      Area.where("name ilike :search", search: "%#{params[:search]}%")
      @items =      Item.where("name ilike :search", search: "%#{params[:search]}%")
    end
    respond_to do |format|
      format.html
      format.js
    end
  end

end
