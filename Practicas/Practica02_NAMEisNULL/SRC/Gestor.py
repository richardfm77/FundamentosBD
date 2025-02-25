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
    def agregar(registros: List[str], registro: str, tipo: T) -> List[str]:
        try:
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
    def editar(archivo: str, llave: str, nuevos_datos: List[str], cllave: int) -> str:
        try:
            registros = lectura(archivo)
            indiceAeditar = -1

            for i, registro in enumerate(registros):
                if registro[cllave] == llave:
                    indiceAeditar = i
                    break

            if indiceAeditar != -1:
                registros[indiceAeditar] = nuevos_datos
                escritura(archivo, registros)
                return f"La llave {llave} fue editada exitosamente"
            else:
                return f"La llave {llave} no se encontro"
        except Exception as e:
            print(f"Ocurrió un error: {e}")
            return "Error durante la edición"
        
    #Metodo para eliminar
    def eliminar(archivo: str, llave: str, cllave: int) -> str:
        try:
            registros = lectura(archivo)
            registros_actualizados = [registro for registro in registros if registro[cllave] != llave]

            if len(registros) != len(registros_actualizados):
                escritura(archivo, registros_actualizados)
                return f"Registro con llave {llave} eliminado exitosamente"
            else:
                return f"Registro con llave {llave} no encontrado"
        except Exception as e:
            print(f"Ocurrió un error: {e}")
            return "Error durante la eliminación"

        

    
    