require "pry-byebug"
def caesar_cipher(string, num)
	if string.ascii_only?
		new_string = ""
			string.each_char do |char|
					code = char.ord
					binding.pry
					if code.between?(97, 122)
							code = change_code(code, num, 97, 122)
							new_string += code.chr
					end
					if code.between?(65, 90)
							code = change_code(code, num, 65, 90)
							new_string += code.chr
					end
					if code == 32
						new_string += " "
					end
			end
			new_string
	else 
		return "Error!"
	end
end

def change_code(code, num, min, max)
	sum = code + num
	if sum < min
		sum += 26
	end
	if sum > max
		sum -= 26
	end
	sum % max
end

string = gets.chomp
num = gets.chomp.to_i
puts string = caesar_cipher(string, num)