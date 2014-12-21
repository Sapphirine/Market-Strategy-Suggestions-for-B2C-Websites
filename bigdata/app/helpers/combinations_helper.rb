module CombinationsHelper
	def print_val(str)
		if(str.include? '|')
			tmp = "(TOP 3)<br>"
			tokens = str.split('|')
			tokens.each { |token| tmp += "#{token}<br>" }
		else
			tmp = str
		end
		tmp.html_safe
	end

	def print_attr_name(str)
		case str
		when 'edu'
			tmp = 'education'
		when 'ins'
			tmp = 'insurance'
		when 'occu'
			tmp = 'occupation'
		else
			tmp = str
		end

		tmp.upcase
			
	end

end
