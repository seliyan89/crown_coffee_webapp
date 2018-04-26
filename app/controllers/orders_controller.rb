class OrdersController < ApplicationController
      def index
            @orders = Order.all
            @current_session = request.session_options[:id]
            @my_orders = Order.where("user_id = ? and payment_status = ?", current_user.id, "In Cart")
      end
    
      def show
      end
    
      def new
      end
    
      def edit
      end
    
      def create
            order = Order.find_by user_id: order_params[:user_id], product_id: order_params[:product_id], variation_id: order_params[:variation_id], payment_status: "In Cart"
            
            if order != nil
                  order.quantity = order.quantity += 1
                  order.save
            else
                  @order = Order.new(order_params)
                  @order.save
            end
      end
    
      def update
      end
    
      def destroy
            @order = Order.find(params[:id])

            @order.update(payment_status: "Removed from cart")
            redirect_to orders_path
      end

      private
      def order_params
            params.require(:order).permit(:number, :user_id, :product_id, :quantity, :price, :payment_status, :is_complete, :variation_id)
      end


end
