#!/usr/local/rvm/rubies/ruby-2.0.0-p247/bin/ruby

def suma
	a=[[10, 2, 3], [9, 20, 32], [6, 9, 10]]
	b=[[2, 20, 30], [4, 7, 12], [5, 9, 4 ]]
	c=[[0,0,0],[0,0,0],[0,0,0]]
	
	i=0
	j=0
	until j==3 do
		until i==3 do
			c[j][i]=b[j][i]
			c[j][i]+=a[j][i]
        	i+=1
		end
	i=0
	j+=1
	end
	
	until i==3 do
	print(c[i])
	puts()
	i+=1
	end
end

suma()
