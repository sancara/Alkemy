import UIKit
/*
1.  Definir una tupla que describa una dirección, con campos como ciudad, partido, provincia, calle, pais, codigoPostal, etc. Siéntanse libres de colocar todos los campos que consideren relevantes. Usar un diccionario para la calle con los campos nombreDeCalle, numero, entrecalle1 y entrecalle2.
 */
let tupla = (ciudad:"Paraná", partido: "Paraná" ,provincia:"Entre Ríos" , calle:["nombreCalle": "Concordia", "numero":"486", "entrecalle1":"Gualeguaychú", "entrecalle2":"Rioja"] , pais:"Argentina" ,codigoPostal: "3100")

/*
2.   Dentro de la dirección, definir algunos tipos  de datos opcionales, entre ellos piso y        departamento.
 
*/

typealias Direccion = (ciudad: String, partido: String, provincia: String, calle: [String:Any], pais: String, codigoPostal: Int, piso: Int?, departamento: String?)




/*
3.   Definir tres direcciones en constantes.*/

let direccion1: Direccion = (ciudad:"Paraná", partido: "Paraná" ,provincia:"Entre Ríos" , calle:["nombreCalle": "Concordia",
            "numero":"486",
            "entrecalle1":"Gualeguaychú",
            "entrecalle2":"Rioja"],
    pais:"Argentina",
    codigoPostal: 3100,
    piso: nil, departamento: nil)

let direccion2: Direccion = (
   ciudad: "Parque Patricios",
   partido: "Parque Patricios",
   provincia: "Buenos Aires",
   calle: ["nombreDeCalle": "Av. Sempiterna",
           "numero": 1123,
           "entreCalle1": "Sarmiento",
           "entreCalle2": "Alsina"
   ],
   pais: "Argentina",
   codigoPostal: 1718,
   piso: 8,
   departamento: "C")

let direccion3: Direccion = (ciudad:"Gualeguaychú", partido: "Pueblo Belgrano" ,provincia:"Entre Ríos" , calle:["nombreCalle": "Azul",
            "numero":"1234",
            "entrecalle1":"Concorida",
            "entrecalle2":"Paraná"],
    pais:"Argentina",
    codigoPostal: 2820,
    piso: 9, departamento: "B")
/*
4.   Escribir una función que reciba una            dirección y la imprima como un String bien     formateado. Hacer uso de la interpolación.
*/

func printer(direccion: Direccion) -> String{
    return "\(direccion)"
}

print(printer(direccion: direccion3))

/*
5.   Escribir una función que reciba un Array de    direcciones y devuelva un String que contenga  "piso: \(piso) ; depto: \(departamento)",      SOLO para las direcciones que tengan           definidos tanto un piso como un departamento.
*/
