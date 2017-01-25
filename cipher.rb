def encrypt (s, n)
	crypt = s.split('').collect do |a|
		if a.ord.between?(65,90)
			a = ( 65 + (a.ord - 65 + n) % 26 ).chr
		elsif a.ord.between?(97,122)
			a = ( 97 + (a.ord - 97 + n) % 26 ).chr
		else
			a = a
		end
	end
	crypt.join
end

