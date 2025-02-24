import csv

def lectura(archivo):
    with open(archivo, newline="", encoding="utf-8") as archivo:
        lector_csv = csv.reader(archivo)
        lineas = [linea for linea in lector_csv]
    return lineas

def escritura(archivo, datos):
    with open(archivo, mode="w", newline="", encoding="utf-8") as archivo:
        for linea in datos:
            archivo.write(linea)