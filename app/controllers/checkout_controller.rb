class CheckoutController < ApplicationController
    
    def create
        #logic to open stripe checkout
        product = Product.find(params[:id])

        # Assuming price is stored in cents, you can use it directly
        @session = Stripe::Checkout::Session.create({
          payment_method_types: ['card'],
          line_items: [{
              price_data: {
              currency: 'usd',
              product_data: {
                  name: product.name,
              },
              unit_amount: product.price,
            },
            quantity: 1,
          
          }],
          #line_items: [{
              #name: product.name,
              #amount: product.price,
              #currency: "usd",
              #quantity: 1
          #}],
            
          mode: 'payment', # Payment mode
          success_url: root_url, #'https://example.com/success', # Redirect URL after successful payment
          cancel_url: root_url, #'https://example.com/cancel', # Redirect URL after payment cancellation
        })
        
        #respond_to do |format|
        #     format.js
        # end 

    end
    
end 
    