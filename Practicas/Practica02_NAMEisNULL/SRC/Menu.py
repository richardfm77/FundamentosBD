import lectura_escritura
from Gestor import Gestor
from Emprendedor import Emprendedor

# Aquí va estar el menú


emprendedor = "FORM030614V21,Ricardo,Flores,Mata,aqui,5528962635,flores@gmail.com,14/06/2003,M"

gestor_emprendedor = Gestor[Emprendedor]

registros = gestor_emprendedor.agregar([], emprendedor, Emprendedor)

print(registros)

lectura_escritura.escritura("emprendedro.csv", registros)