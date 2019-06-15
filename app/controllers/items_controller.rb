class ItemsController < ApplicationController

  def index
    items = Item.all
    if items
      render json: {items: items}
    end
  end

  def show
    item = Item.find_by(id: params[:id])
    if item
      render json: {item: item, colors: item.colors, sizes: item.sizes}
    else
      render json: {item: "No items"}
    end
  end

  def create
    item = Item.new(item_params)
    if item.save
      render json: {item: item}
    else
      render json: {item: "No items"}
    end
  end

  def update
    item = Item.find_by(id: params[:id])
    item.update(item_params)
    if item.save
      render json: {item: item}
    else
      render json: {item: "No items"}
    end
  end

  def delete
    if Item.find_by(id: params[:id]).destroy()
      render json: {message: "item deleted"}
    else
      render json: {message: 'error'}
    end
  end


  private

  def item_params
    permit(:id, :name, :size, :image, :description, :cost, :gender)
  end

end
