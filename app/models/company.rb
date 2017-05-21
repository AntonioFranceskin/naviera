class Company < ApplicationRecord
	has_many :bill_of_landings
	has_many :ships
	has_many :clients, through: :bill_of_landings
	has_many :container, through: :bill_of_landings
	before_create :normalize_name
	validates :rif, length: { is: 10 }
	validate :digitoverificador 

private
	def normalize_name
	    self.company_name.upcase!
	end	

	def digitoverificador
		if rif.present? then
			puts "Company #{self.rif}"
			rif2 =[]
			rif1 =[] 
			rif1 = self.rif.split('')		
			case rif1[0]
				when "V" , "v"
					rif2[0] = 1
				when "E" , "e"
					rif2[0] = 2
				when "J" , "j"	
					rif2[0] = 3
				else
					rif2[0] = 0
			end	
			digver = rif2[0]*4
			multi = [4,3,2,7,6,5,4,3,2]	
			if rif2[0] != 0
				for i  in  0..rif1.length-2 
					rif1[i] == "0" ?  aux1 = 1 : aux1 =2; #Operador Ternario  preguta integerb[1].to_i.is_a? Integer
					rif2[i] = rif1[i].to_i
					if (rif2[i] == 0 && aux1 == 1) || (rif2[i] != 0 && aux1 == 2)
						digver += rif2[i]*multi[i]
#						puts "i #{i} rif2[i] #{rif2[i]}   multi[i] #{multi[i]}  digver #{digver} "
					end
				end	
				digver = 11 - digver%11
				digver = 0 if digver >= 10
#				puts "rif1[9] #{rif1[9].to_i} digver #{digver} "
				if (rif1[9].to_i != digver)  
					errors.add(:rif, "Digito Verificador del RIF no es correcto")
				end	
			else
				errors.add(:rif, "No es  un RIF Valido")	
			end
		end
	end
end
