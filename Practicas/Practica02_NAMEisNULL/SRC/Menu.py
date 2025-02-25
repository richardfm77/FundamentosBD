import os
import lectura_escritura
import sys
from os import system
from Gestor import Gestor
from Emprendedor import Emprendedor
from Negocio import Negocio
from Cliente import Cliente
from lectura_escritura import lectura, escritura

# Aquí va estar el menú




def menu():
    """
    Funcion que imprime el menu y recibe la opcion del usuario
    """
    print("La Gatita Emprendedora")
    print("Bienvenido al sistema de control de datos")
    print("Escriba el número de la opción que desee realizar")
    print("1.- Agregar Información")
    print("2.- Consultar Información")
    print("3.- Modificar Información")
    print("4.- Eliminar Información")
    print("5.- Salir")
    selecionar_opcion(verificacion(5))

def selecionar_opcion(opcion):
    """
    Funcion que recibe la opcion seleccionada por el usuario y realiza la accion correspondiente
    """
    if opcion == 1:
        agregar_informacion()
    elif opcion == 2:
        consultar_informacion()
    elif opcion == 3:
        modificar_informacion()
    elif opcion == 4:
        eliminar_informacion()
    else:
        print("Gracias por usar el sistema")
        sys.exit()

def selecionar_tabla():
    """
    Funcion que imprime las tablas disponibles y recibe la opcion del usuario
    """
    print("Ingrese el número de la tabla en la que desea trabajar")
    print("1.- Emprendedor")
    print("2.- Negocio")
    print("3.- Cliente")
    return verificacion(3)

def verificacion(numeroMaximo):
    """
    Funcion que verifica que la opcion ingresada por el usuario sea un numero 
    entre 1 y el numero maximo de opciones
    """
    while True:
        try:
            opcion = int(input("Opción: "))
            if opcion > 0 and opcion <= numeroMaximo:
                return opcion
            else:
                print("Opción no válida")
        except ValueError:
            print("Opción no válida") 

def regresar_menu():
    """
    Funcion que regresa al menu principal
    """
    print("Presione enter para regresar al menu")
    input()
    limpiar_termianl()
    main() 

def limpiar_termianl():
    """
    Funcion que limpia la terminal
    """
    # No tengo windows para probarlo
    if os.name == "nt":
        system("cls")
    else:
        system("clear")



def agregar_informacion():
    """
    Funcion que agrega informacion a una tabla
    """
    tabla = selecionar_tabla()
    print(tabla)
    if tabla == 1:
        gestor_emprendedor = Gestor[Emprendedor]
        datosEmprendedor = datos_emprendedor()
        emprendedor = f"{datosEmprendedor.get_rfc()},{datosEmprendedor.get_nombre()},{datosEmprendedor.get_apellido_paterno()},{datosEmprendedor.get_apellido_materno()},{datosEmprendedor.get_domicilio()},{datosEmprendedor.get_telefono()},{datosEmprendedor.get_correo()},{datosEmprendedor.get_fecha_nacimiento()}, {datosEmprendedor.get_genero()}"
        registros = gestor_emprendedor.agregar([], emprendedor, Emprendedor)
        escritura("./emprendedor.csv", registros)
        #Funcion para agregar informacion a la tabla emprendedor
    elif tabla == 2:
        gestor_negocio = Gestor[Negocio]
        datosNegocio = datos_negocio()
        negocio = f"{datosNegocio.get_nombre()},{datosNegocio.get_telefonos()},{datosNegocio.get_correos()},{datosNegocio.get_redes_sociales()},{datosNegocio.get_rango_precios()},{datosNegocio.get_descripcion()}"
        registrosN = gestor_negocio.agregar([], negocio, Negocio)
        escritura("./negocio.csv", registrosN)
        #Funcion para agregar informacion a la tabla negocio
    else:
        gestor_cliente = Gestor[Cliente]
        datosCliente = datos_cliente()
        cliente = f"{datosCliente.get_nombre()},{datosCliente.get_apellido_paterno()},{datosCliente.get_apellido_materno()},{datosCliente.get_metodo_pago()},{datosCliente.get_domicilio_entrega()},{datosCliente.get_informacion_tarjeta()}"
        registrosC = gestor_cliente.agregar([], cliente, Cliente)
        escritura("./cliente.csv", registrosC)
        #Funcion para agregar informacion a la tabla cliente
    regresar_menu()

def datos_emprendedor():
    """
    Funcion que genera un emprendedor 
    return: Emprendedor con la informacion ingresada
    """
    print("Ingrese la información del emprendedor")
    rfc = input("RFC: ")
    nombre = input("Nombre: ")
    apellido_paterno = input("Apellido Paterno: ")
    apellido_materno = input("Apellido Materno: ")
    domicilio = input("Domicilio: ")
    telefono = input("Telefono: ")
    correo = input("Correo: ")
    fecha_nacimiento = input("Fecha de Nacimiento: ")
    genero = input("Genero: ")
    return Emprendedor(rfc, nombre, apellido_paterno, apellido_materno, domicilio, telefono, correo, fecha_nacimiento, genero)


def datos_negocio():
    """
    Funcion que genera un negocio
    return: Negocio con la informacion ingresada
    """
    print("Ingrese la información del negocio")
    nombre = input("Nombre: ")
    telefonos = input("Telefonos: ").split(",")
    correos = input("Correos: ").split(",")
    redes_sociales = input("Redes Sociales: ").split(",")
    rango_precios = input("Rango de Precios: ")
    descripcion = input("Descripción: ")
    return Negocio(nombre, telefonos, correos, redes_sociales, rango_precios, descripcion)


def datos_cliente():
    """
    Funcion que genera un cliente 
    return: Cliente con la informacion ingresada
    """
    print("Ingrese la información del cliente")
    nombre = input("Nombre: ")
    apellido_paterno = input("Apellido Paterno: ")
    apellido_materno = input("Apellido Materno: ")
    metodo_pago = input("Método de Pago: ")
    domicilio_entrega = input("Domicilio de Entrega: ")
    informacion_tarjeta = input("Información de la Tarjeta: ")
    return Cliente(nombre, apellido_paterno, apellido_materno, metodo_pago, domicilio_entrega, informacion_tarjeta)

def consultar_informacion():
    """
    Funcion que consulta informacion de una tabla
    """
    print("Desea realizar una consulta en especifico")
    print("1.- Si")
    print("2.- No")
    if verificacion(2) == 1:
       consulta = consultar_informacion_especifica()
    else:
        consulta = consultar_informacion_general()

    if len(consulta) == 0:
        print("No se encontraron resultados")
    else:
        for registro in consulta:
            print(registro)
    regresar_menu()


def consultar_informacion_especifica():
    """
    Función que consulta información específica de una tabla
    return: contenido [] lisa con la información consultada
    """
    tabla = selecionar_tabla()
    print("Ingrese el idetificador del registro que desea consultar")
    contenido = []
    if tabla == 1:
        respuesta = input("rfc: ")
        #contenido = funcion para consultar informacion de la tabla emprendedor
        gestor_emprendedor = Gestor[Emprendedor]
        contenido = gestor_emprendedor.consultar("./emprendedor.csv", respuesta, 0)
        
    elif tabla == 2:
        respuesta = input("nombre: ")
        #contenido = funcion para consultar informacion de la tabla negocio
        gestor_negocio = Gestor[Negocio]
        contenido= gestor_negocio.consultar("./negocio.csv", respuesta, 0)
    else:
        respuesta = input("nombre: ")
        #respuesta_Apellido = input("apellido paterno: ")
        #contenido = funcion para consultar informacion de la tabla cliente
        gestor_cliente = Gestor[Cliente]
        gestor_cliente.consultar("./cliente.csv", respuesta,0)
    return contenido

def consultar_informacion_general():
    """
    Funcion que consulta informacion general de una tabla
    return: contenido [] lisa con la información consultada
    """
    tabla = selecionar_tabla()
    contenido = []
    if tabla == 1:
        contenido = lectura("./emprendedor.csv")
        #contenido = funcion para consultar informacion de la tabla emprendedor
    elif tabla == 2:
        #contenido = funcion para consultar informacion de la tabla negocio
        contenido = lectura("./negocio.csv")
    else:
        #contenido = funcion para consultar informacion de la tabla cliente
        contenido = lectura("./cliente.csv")
    return contenido



def modificar_informacion():
    """
    Funcion que modifica informacion de un registro de una tabla
    """
    tabla = selecionar_tabla()
    if tabla == 1:
        respuesta = input("Ingrese el rfc del registro que desea modificar: ")
        print("Ingrese la nueva información")
        emprendedor = datos_emprendedor()
        #Funcion para modificar informacion de la tabla emprendedor
        gestorEmprendedor = Gestor[Emprendedor]
        gestorEmprendedor.editar("./emprendedor.csv",respuesta, emprendedor, 0)
    elif tabla == 2:
        respuesta = input("Ingrese el nombre del registro que desea modificar: ")
        print("Ingrese la nueva información")
        negocio = datos_negocio()
        #Funcion para modificar informacion de la tabla negocio
        gestorNegocio = Gestor[Negocio]
        gestorNegocio.editar("./negocio.csv", respuesta, negocio, 0)
    else:
        respuesta = input("Ingrese el nombre del registro que desea modificar: ")
        #respuesta_Apellido = input("Ingrese el apellido paterno del registro que desea modificar: ")
        print("Ingrese la nueva información")
        cliente = datos_cliente()
        #Funcion para modificar informacion de la tabla cliente
        gestorCliente = Gestor[Cliente]
        gestorNegocio.editar("./cliente.csv", respuesta, cliente, 0)
    regresar_menu()

def eliminar_informacion():
    """
    Funcion que elimina informacion de una tabla
    """
    tabla = selecionar_tabla()
    print("Ingrese el idetificador del registro que desea eliminar")
    if tabla == 1:
        respuesta = input("rfc: ")
        #Funcion para eliminar registro de la tabla emprendedor
        gestorEmprendedor = Gestor[Emprendedor]
        gestorEmprendedor.eliminar("./emprendedor.csv", respuesta, 0)
    elif tabla == 2:
        respuesta = input("nombre: ")
        #Funcion para eliminar registro de la tabla negocio
        gestorNegocio = Gestor[Negocio]
        gestorNegocio.eliminar("./negocio.csv", respuesta, 0)
    else:
        respuesta = input("nombre: ")
        #input("apellido paterno: ")
        #Funcion para eliminar registro de la tabla cliente
        gestorCliente = Gestor[Cliente]
        gestorCliente.eliminar("./cliente.csv", respuesta,0)
    regresar_menu()

def main():
    """
    Funcion principal
    """
    menu()

if __name__ == "__main__":
    main() 
