#!/usr/local/rvm/rubies/ruby-2.0.0-p247/bin/ruby



def multiplicacion ()
  
  #operandos
  a=[[2, 10,3],[30, 40,3], [30, 40, 3]]
  b=[[10, 2, 3],[3, 9, 5],[3, 9, 5]]
  
  #resultado
  c=[[0, 0, 0],[0, 0, 0],[0, 0, 0]]
  
  i=0
  j=0
  k=0
  
  # a.size -->filas
  # a[0].size 0-->columnas
  
  if a[0].size == b.size #numero columnas de A igual a filas de B 
    until i== a[0].size do #columnas de A
      until j== b.size do #filas de B
        until k==b.size  do
          c[i][j]+= a[i][k]*b[k][j]
          k+=1;
        end
        k=0;
        j+=1
      end
      j=0
      i+=1
    end
    
    i=0

    until i==b.size do
      print(c[i])
      puts "\n"
      i+=1
    end
   
  
  else
  
    puts ("Error de tamaño")
  
  end
  
end

multiplicacion()


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

