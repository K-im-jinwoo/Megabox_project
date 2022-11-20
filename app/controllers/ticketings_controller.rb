class TicketingsController < ApplicationController
	def index
		@ticketings = current_user.ticketings
	end
	
	def create
		@price = params[:tk_price]
		Ticketing.create(
			screen_id: 1,
			user_id: current_user.id,
			tk_account: params[:adult].to_i,
			tk_price: @price.to_i * params[:adult].to_i
			)
		
		redirect_back(fallback_location: root_path)
	end
end
