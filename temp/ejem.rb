#!/usr/local/rvm/rubies/ruby-2.0.0-p247/bin/ruby


puts "  "
puts " Suma!" 
if a.length == b.length
  if a[0].length == b[0].length
    for i in(0...fila) do
      for j in(0...columna) do
	  c[i][j] = a[i][j]+b[i][j]
	  puts c[i][j]
      end  
    end
  end
else
  puts " No se puede realizar suma!"
end

puts "Producto"
if a.length == b[0].length
#   if a[0].length == b.length 
  c = Array.new
  for i in 0...fila do
  c[i] = Array.new
   for j in 0...columna do
    c[i][j] = 0
   end
  end
     for i in(0...fila) do
      for j in(0...columna) do
	for l in(0...fila) do
	c[i][j]= c[i][j]+(a[i][l]*b[l][j]) 
	end
      end
     end
     
    for i in(0...fila) do
      for j in(0...columna) do
      puts c[i][j]
      end
    end
     
else
  puts " No se puede realizar producto !"
end  
#!/usr/bin/ruby


# Abre y lee un fichero
# Se usa un bloque: el fichero se cierra
# automáticamente al acabar el bloque.

def mapmap(a)
  a.map { |r| 
    r.map { |e| 
      yield e
    }
  }
end


def to_m(a)
  a = a.split(/\n/)
  a = a.map { |r| r.split(/\s+/) }
  a = mapmap(a) { |x| x.to_f } 
end


def read_matrices(fn)
  text = File.open(fn).read

  puts text

  a, b = text.split(/\n\n+/)
  a = to_m(a)
  b = to_m(b)

  [a, b]
end

a, b = read_matrices('datos.txt')

a, b = read_matrices('datos.txt')

puts "Elementos de a " 
puts a
puts "Elementos de b " 
puts b

puts " "

puts "Matriz A tiene  "
puts a.length
puts "filas y  "
puts a[0].length
puts " columnas"

puts " "
puts "Matriz B tiene  "
puts b.length
puts "filas y  "
puts b[0].length
puts " columnas"
