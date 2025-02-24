from typing import TypeVar, Generic
from typing import List
from serializable import Serializable 


T = TypeVar("T", bound=Serializable)

class Gestor(Generic[T]):  
    
    def agregar(registros: List[str], registro: str, tipo: T) -> List[str]:
        try:
            registro_objeto = tipo.deserializa(registro)
            registro = registro_objeto.serializa()
            registros.append(registro)
            return registros
        except Exception as e:
            print(f"Ocurrió un error: {e}")