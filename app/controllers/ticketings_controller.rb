class TicketingsController < ApplicationController
	def index
		@ticketings = current_user.ticketings
	end
	
	def create
		@price = params[:tk_price]
		Ticketing.create(
			screen_id: params[:screen_id],
			user_id: current_user.id,
			tk_account: params[:adult].to_i,
			tk_price: @price.to_i * params[:adult].to_i,
			tk_seat: params[:seat_name]
			)
		
		redirect_to '/ticketings/'
	end
end
