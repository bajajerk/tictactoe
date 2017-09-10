puts "Which board you wanna play 3,4,5..."
ini=gets
n=ini.to_i
a=Array.new(n){Array.new(n)}
checker =false
checker2 =false
checker3=false
checker4=false

	
#setting of board 
i=0
setter=1
j=0

while(i<n)
	while(j<n)
		a[i][j]=setter
		setter=setter+1
		j=j+1
	end
	j=0
	i=i+1
	end


def boardview a,n
	i=0
	j=0
while i<n
	while j<n
	print "#{a[i][j]}  " 
	j=j+1
	end 
	j=0
	puts " "
	i=i+1
end
end 

boardview a,n



 def win1 a,n
 	i=0
 	j=0
 	while i<n
 		while j<n-1
 			if a[i][j]!=a[i][j+1]
 				break
 			end
 	if j==n-2
 		checker=true
 		return checker      #horizontal rows checked 
 	end
 	j=j+1
 end
 i=i+1
end

return checker
end 
 	

 def win2 a,n
 		i=0
 	j=0
while j<n
	while i<n-1
		if(a[i][j]!=a[i+1][j])
			break
		end
		if i==n-2                #vertical columns being checked
			checker2=true
			return checker2
		end
		i=i+1
	end
  j=j+1
end   	

return checker2
end

def win3 a,n
	i=0
	while i<n-1
		if a[i][i]!=a[i+1][i+1]
			break 
		end 
                                              #first diagonal being checked
		if i==n-2
			checker3=true
			return checker3
		end
		i=i+1
	end
return checker3
end			

def win4 a,n 
	i=0
	while i<n-1
		if a[i][n-1-i]!=a[i+1][n-i-2]
			break
		end 

		if i==n-2
			checker4=true 
			return checker4
		end
		i=i+1
	end
	return checker4
end





def playeroperation booler,position,a,n
	position=position-1
	if(booler==true)
		a[position/n][position%n]="0"
	
else  (booler==false)
			a[position/n][position%n]="x"
		
		end 
	end





puts "Player 1 Name"
player1=gets

puts "Player 2 Name"
player2=gets


while (4==4)

puts "Player1 chance, where you wanna put 0 "
where=gets
temp=where.to_i
playeroperation true , temp,a,n
boardview a,n
checker = win1 a,n
checker2 = win2 a,n
checker3 = win3 a,n
checker4=win4 a,n
if(checker==true|| checker2==true || checker3==true||checker4==true)
	puts "Player 1 wins , fuck off player 2 "
	break
end

puts "Player2 chance, where you wanna put X "
where=gets
temp=where.to_i
playeroperation false, temp,a,n
boardview a,n
checker = win1 a,n
checker2 = win2 a,n
checker3 = win3 a,n
if(checker==true|| checker2==true || checker3==true)
	puts "Player 2 wins , fuck off player 1 "
	break
end

end 
