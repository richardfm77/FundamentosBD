from serializable import Serializable

class Emprendedor(Serializable):
    """
    Representa un emprendedor dentro del sistema.

    Atributos:
        rfc (str): Registro Federal de Contribuyentes del emprendedor.
        nombre (str): Nombre del emprendedor.
        apellido_paterno (str): Apellido paterno del emprendedor.
        apellido_materno (str): Apellido materno del emprendedor.
        domicilio (str): Dirección del emprendedor.
        telefono (str): Número de teléfono del emprendedor.
        correo (str): Correo electrónico del emprendedor.
        fecha_nacimiento (str): Fecha de nacimiento del emprendedor en formato 'YYYY-MM-DD'.
        genero (str): Género del emprendedor.
    """
    
    def __init__(self, rfc: str, nombre: str, apellido_paterno: str, apellido_materno: str, domicilio: str, 
                 telefono: str, correo: str, fecha_nacimiento: str, genero: str):
        """
        Inicializa un objeto Emprendedor con la información proporcionada.

        Args:
            rfc (str): Registro Federal de Contribuyentes del emprendedor.
            nombre (str): Nombre del emprendedor.
            apellido_paterno (str): Apellido paterno del emprendedor.
            apellido_materno (str): Apellido materno del emprendedor.
            domicilio (str): Dirección del emprendedor.
            telefono (str): Número de teléfono del emprendedor.
            correo (str): Correo electrónico del emprendedor.
            fecha_nacimiento (str): Fecha de nacimiento en formato 'YYYY-MM-DD'.
            genero (str): Género del emprendedor.
        """
        self.rfc = rfc
        self.nombre = nombre
        self.apellido_paterno = apellido_paterno
        self.apellido_materno = apellido_materno
        self.domicilio = domicilio
        self.telefono = telefono
        self.correo = correo
        self.fecha_nacimiento = fecha_nacimiento
        self.genero = genero

    #Metodo get_rfc que regresa el rfc
    def get_rfc(self) -> str:
        return self.rfc

    #Metodo get_nombre que regresa el nombre
    def get_nombre(self) -> str:
        return self.nombre

    #Metodo get_apellido_paterno que regresa el apellido paterno
    def get_apellido_paterno(self) -> str:
        return self.apellido_paterno

    #Metodo get_apellido_materno que regresa el apellido materno
    def get_apellido_materno(self) -> str:
        return self.apellido_materno

    #Metodo get_domicilio que regresa el domicilio
    def get_domicilio(self) -> str:
        return self.domicilio

    #Metodo get_telefono que regresa el telefono
    def get_telefono(self) -> str:
        return self.telefono

    #Metodo get_correo que regresa el correo 
    def get_correo(self) -> str:
        return self.correo

    #Metodo get_fecha_nacimiento que regresa la fecha de nacimiento
    def get_fecha_nacimiento(self) -> str:
        return self.fecha_nacimiento

    #Metodo get_genero que regresa el genero
    def get_genero(self) -> str:
        return self.genero
    
    def serializa(self) -> str:
        """
        Devuelve una representación en cadena del objeto Emprendedor.

        Returns:
            str: Representación en cadena del emprendedor.
        """
        return f"{self.rfc},{self.nombre},{self.apellido_paterno},{self.apellido_materno},{self.domicilio},{self.telefono},{self.correo},{self.fecha_nacimiento},{self.genero}\n"
    
    @classmethod
    def deserializa(cls, data: str) -> "Emprendedor":
        array = data.split(",")
        rfc = array[0]
        nombre = array[1]
        apellido_paterno = array[2]
        apellido_materno = array[3]
        domicilio = array[4]
        telefono = array[5]
        correo = array[6]
        fecha_nacimiento = array[7]
        genero = array[8]
        return cls(rfc, nombre, apellido_paterno, apellido_materno, domicilio, telefono, correo,fecha_nacimiento, genero)