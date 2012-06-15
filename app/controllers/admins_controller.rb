class AdminsController < ApplicationController
	
	def view
	end
	
	def data
		@users = User.all()
	end
	
	def dbaction
		#called for all db actions
		first_name = params["c0"]
		last_name	 = params["c1"]
		phone			 = params["c2"]
		
		@mode = params["!nativeeditor_status"]
		
		@id = params["gr_id"]
		case @mode
			when "inserted"
				user = User.new
				user.first_name = first_name
				user.last_name = last_name
				user.phone = phone
				user.save!	
				@tid = user.id
			when "deleted"
				user=User.find(@id)
				user.destroy
				@tid = @id
			when "updated"
				user=User.find(@id)
				user.first_name = first_name
				user.last_name = last_name
				user.phone = phone
				user.save!
				@tid = @id
		end 
	end
	
end
