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