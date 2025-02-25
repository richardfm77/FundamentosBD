from serializable import Serializable
class Cliente(Serializable):
    """
    Representa un cliente que asiste al bazar.

    Atributos:
        nombre (str): Nombre del cliente.
        apellido_paterno (str): Apellido paterno del cliente.
        apellido_materno (str): Apellido materno del cliente.
        metodo_pago (str): Método de pago del cliente (efectivo o tarjeta).
        domicilio_entrega (dict, opcional): Dirección de entrega para compras en línea.
        informacion_tarjeta (dict, opcional): Información de la tarjeta de pago.
    """

    def __init__(self, nombre: str, apellido_paterno: str, apellido_materno: str, metodo_pago: str, 
                 domicilio_entrega: dict = None, informacion_tarjeta: dict = None):
        """
        Inicializa un objeto Cliente con la información proporcionada.

        Args:
            nombre (str): Nombre del cliente.
            apellido_paterno (str): Apellido paterno del cliente.
            apellido_materno (str): Apellido materno del cliente.
            metodo_pago (str): Método de pago (efectivo o tarjeta).
            domicilio_entrega (dict, opcional): Diccionario con los datos de entrega (calle, número interior,
                número exterior, colonia, estado). Solo si el cliente compra en línea.
            informacion_tarjeta (dict, opcional): Diccionario con los datos de la tarjeta (número de tarjeta,
                vencimiento, cvv). Solo si el método de pago es tarjeta.
        """
        self.nombre = nombre
        self.apellido_paterno = apellido_paterno
        self.apellido_materno = apellido_materno
        self.metodo_pago = metodo_pago
        self.domicilio_entrega = domicilio_entrega if domicilio_entrega is not None else {}
        self.informacion_tarjeta = informacion_tarjeta if informacion_tarjeta is not None else {}
    
    #Metodo get_nombre que regresa el nombre
    def get_nombre(self) -> str:
        return self.nombre

    #Metodo get_apellido_paterno que regresa el apellido parterno
    def get_apellido_paterno(self) -> str:
        return self.apellido_paterno

    #Metodo get_apellido_materno que regresa el apellido materno
    def get_apellido_materno(self) -> str:
        return self.apellido_materno

    #Metodo get_metodo_pago que regresa el metodo de pago
    def get_metodo_pago(self) -> str:
        return self.metodo_pago

    #Metodo get_domicilio que regresa el domicilio
    def get_domicilio_entrega(self) -> dict:
        return self.domicilio_entrega

    #Metodo get_informacion_tarjeta que regresa la informacion de tarjeta
    def get_informacion_tarjeta(self) -> dict:
        return self.informacion_tarjeta
    
    
    def __repr__(self):
        """
        Devuelve una representación en cadena del objeto Cliente.

        Returns:
            str: Representación en cadena del cliente.
        """
        return f"{self.nombre},{self.apellido_paterno},{self.apellido_materno},{self.metodo_pago},{self.domicilio_entrega},{self.informacion_tarjeta}\n"

    def serializa(self) -> str:
        """
        Devuelve una representación en cadena del objeto Negocio.

        Returns:
            str: Representación en cadena del negocio.
        """
        return f"{self.nombre},{self.apellido_paterno},{self.apellido_materno},{self.metodo_pago},{self.domicilio_entrega},{self.informacion_tarjeta}"


    @classmethod
    def deserializa(cls, data: str) -> "Cliente":
        array = data.split(",")
        nombre = array[0]
        apellido_paterno = array[1]
        apellido_materno = array[2]
        metodo_pago = array[3]
        domicilio_entrega = array[4]
        informacion_tarjeta = array[5]
        return cls(nombre,apellido_paterno,apellido_materno,metodo_pago,domicilio_entrega,informacion_tarjeta)
    