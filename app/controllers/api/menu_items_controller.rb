# class Api::MenuItemsController < ApplicationController
#   skip_before_action :verify_authenticity_token
#   # before_action :authenticate_token
  
#   def index
#     if params[:category_id].present?
#       menu_items = MenuItem.where(category_id: params[:category_id]).order(:position)
#     else
#       menu_items = MenuItem.joins(:category).order("categories.position, menu_items.position")
#     end
#     render json: menu_items
#   end
  
#   def create
#     order_machine = OrderMachine.new(session[:order_id], session[:user_id], params[:menu_item_id],  params[:quantity] )
                                     
#     if order_machine.valid?
#       order_machine.ordering
#       session[:order_id] = order_machine.order.id
#       a = "you have just order #{order_machine.menu_item.name}"
#     else
#       a = "You need a valid quantity"
#     end
#     render json: { notice: a }
#   end

  
  
# end