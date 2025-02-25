import csv
from typing import List

def lectura(archivo: str) -> List[str]:
    """Lee un archivo CSV."""
    with open(archivo, "r", encoding="utf-8") as file:
        lineas = file.readlines()
    return [linea.strip() for linea in lineas]

def escritura(nombre_archivo, datos):
    """Escribe un archivo CSV."""
    with open(nombre_archivo, mode="w", newline="", encoding="utf-8") as archivo:
        for linea in datos:
            archivo.write(linea + "\n")