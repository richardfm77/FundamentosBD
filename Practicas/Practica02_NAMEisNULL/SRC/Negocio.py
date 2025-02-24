from typing import List

class Negocio:
    """
    Representa un negocio dentro de un bazar.

    Atributos:
        nombre (str): Nombre del negocio.
        telefonos (List[str]): Lista de números de teléfono del negocio.
        correos (List[str]): Lista de correos electrónicos del negocio.
        redes_sociales (List[str]): Enlaces a las redes sociales del negocio.
        rango_precios (str): Rango de precios de los productos o servicios ofrecidos.
        descripcion (str): Breve descripción de lo que se vende.
    """
    
    def __init__(self, nombre: str, telefonos: List[str] = None, correos: List[str] = None, 
                 redes_sociales: List[str] = None, rango_precios: str = '', descripcion: str = ''):
        """
        Inicializa un objeto Negocio con la información proporcionada.

        Args:
            nombre (str): Nombre del negocio.
            telefonos (List[str], opcional): Lista de números de teléfono. Por defecto, es una lista vacía.
            correos (List[str], opcional): Lista de correos electrónicos. Por defecto, es una lista vacía.
            redes_sociales (List[str], opcional): Lista de enlaces a redes sociales. Por defecto, es una lista vacía.
            rango_precios (str, opcional): Rango de precios del negocio. Por defecto, es una cadena vacía.
            descripcion (str, opcional): Breve descripción del negocio. Por defecto, es una cadena vacía.
        """
        self.nombre = nombre
        self.telefonos = telefonos if telefonos is not None else []
        self.correos = correos if correos is not None else []
        self.redes_sociales = redes_sociales if redes_sociales is not None else []
        self.rango_precios = rango_precios
        self.descripcion = descripcion

    def __repr__(self):
        """
        Devuelve una representación en cadena del objeto Negocio.

        Returns:
            str: Representación en cadena del negocio.
        """
        return f"{self.nombre},{self.telefonos},{self.correos},{self.redes_sociales},{self.rango_precios},{self.descripcion}\n"
