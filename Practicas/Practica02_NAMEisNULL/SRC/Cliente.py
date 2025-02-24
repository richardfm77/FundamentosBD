class Cliente:
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

    def __repr__(self):
        """
        Devuelve una representación en cadena del objeto Cliente.

        Returns:
            str: Representación en cadena del cliente.
        """
        return f"{self.nombre},{self.apellido_paterno},{self.apellido_materno},{self.metodo_pago},{self.domicilio_entrega},{self.informacion_tarjeta}\n"