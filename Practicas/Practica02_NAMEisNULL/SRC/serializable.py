from typing import Protocol

class Serializable(Protocol):
    def serializa(self) -> str:
        ...
    
    @classmethod
    def deserializa(cls, data: str) -> "Serializable":
        ...