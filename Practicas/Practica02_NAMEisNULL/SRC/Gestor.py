from typing import TypeVar, Generic
from typing import List
from serializable import Serializable 
import csv
from lectura_escritura import lectura, escritura
from csv import DictReader, DictWriter
from csv import writer, reader


T = TypeVar("T", bound=Serializable)

class Gestor(Generic[T]):  
    
    #Metodo para agregar    
    def agregar(archivo: str, registro: str, tipo: T) -> List[str]:
        try:
            registros = lectura(archivo)
            registro_objeto = tipo.deserializa(registro)
            registro = registro_objeto.serializa()
            registros.append(registro)
            return registros
        except Exception as e:
            print(f"Ocurrió un error: {e}")
            return registros

    #Metodo para consultar 
    def consultar(archivo: str, llave: str, cllave: int) -> str:
        try:
            registros = lectura(archivo)
            for registro in registros:
                if registro[cllave] == llave:
                    return registro
            return f"Registro con llave {llave} no encontrado"
        except Exception as e:
            print(f"Ocurrió un error: {e}")
            return "Error durante la consulta"

    #Metodo para editar
    def editar(archivo: str, llave: str, nuevoRegistro : T) -> str:
        try:
            registros = lectura(archivo)
            
            esEncontrado = False
            indice = 0
            for registro in registros:
                llave_reg = registro.split(",")[0]
                if llave_reg.strip() == llave:
                    esEncontrado = True
                    break
                indice += 1
            
            if not esEncontrado:
                return f"La llave {llave} no se encontro"

            registros.pop(indice)

            registros.append(nuevoRegistro.serializa())
            escritura(archivo, registros)                     
        except Exception as e:
            print(f"Ocurrió un error: {e}")
            return "Error durante la edición"
        
    #Metodo para eliminar
    def eliminar(archivo: str, llave: str) -> str:
        try:
            registros = lectura(archivo)
            
            esEncontrado = False
            indice = 0
            for registro in registros:
                llave_reg = registro.split(",")[0]
                if llave_reg.strip() == llave:
                    esEncontrado = True
                    break
                indice += 1
          
            if not esEncontrado:
                return f"La llave {llave} no se encontro"

            registros.pop(indice)
            
            escritura(registros)
        except Exception as e:
            print(f"Ocurrió un error: {e}")
            return "Error durante la eliminación"