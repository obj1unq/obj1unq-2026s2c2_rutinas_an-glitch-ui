import gimnasia.*
import personas.*



class Club {
    const property predios = #{}
//El mejor predio de un club para una persona: Es el predio que más calorías le haría quemar a esa persona si ésta practicara 
// todas las rutinas una vez.
    method mejorPredioPara(persona) = 0

//Los predios tranquis de un club para una persona: Es el conjunto de predios que tienen al menos una rutina que le hace gastar
// menos de 500 calorias a la persona
    method prediosTranquisPara(persona) = 0

//Las rutinas más exigentes del club para una persona: Es el conjunto formado por la rutina más exigente de cada predio para esa 
// persona. La rutina más exigente es la que más calorías le hace quemar a esa persona
    method rutinasMasExigentesPara(persona) = 0
}

class Predio {
    const property rutinasQueSePuedenPracticar = #{}
}

