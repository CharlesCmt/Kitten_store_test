class CartController < ApplicationController
    def index
        @cart = Cart.all
      end
    
      def new
      end
    
      def create
      end
    
      def show
        @cart = Cart.find(params[:id])
      end
    
      def edit
      end
    
      def update
      end
    
      def destroy
      end
end
