class OrdersController < ApplicationController
      def index
            @orders = Order.all
            @current_session = request.session_options[:id]
      end
    
      def show
      end
    
      def new
      end
    
      def edit
      end
    
      def create
            @order = Order.new(order_params)

            @order.save
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
