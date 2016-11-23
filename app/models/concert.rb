class Concert < ActiveRecord::Base

	def release_date_format
		meses = ["Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre"]
		mes = meses[self.release_date.strftime("%-m").to_i - 1]
		"#{self.release_date.strftime("%d")} de #{mes} del #{self.release_date.strftime("%Y")}"
	end
end

