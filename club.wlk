import gimnasia.*
import personas.*



class Club {
    const property predios = #{}



    //El mejor predio de un club para una persona: Es el predio que más calorías le haría quemar a esa persona si ésta practicara 
    // todas las rutinas una vez.
    //method mejorPredioPara(persona) = predios.find({p => p.max(p.caloriasQueLeHaceQuemarA(persona))})
    //method mejorPredioPara(persona) = predios.find({p => p.caloriasQueLeHaceQuemarA(persona) == predios.map({p => p.caloriasQueLeHaceQuemarA(persona)}).max()})
    method mejorPredioPara(persona) = predios.max({p => p.rutinaMasExigentePara(persona)})

    //Los predios tranquis de un club para una persona: Es el conjunto de predios que tienen al menos una rutina que le hace gastar
    // menos de 500 calorias a la persona
    //method prediosTranquisPara(persona) = predios.filter({p => (p.rutinasQueSePuedenPracticar()).any({r => r.caloriasQueLeHaceQuemarA(persona) < 500})})
    method prediosTranquisPara(persona) = predios.filter({p => p.esTranquiPara(persona)})

    //Las rutinas más exigentes del club para una persona: Es el conjunto formado por la rutina más exigente de cada predio para esa 
    // persona. La rutina más exigente es la que más calorías le hace quemar a esa persona
    //method rutinasMasExigentesPara(persona) = predios.map({p => (p.rutinasQueSePuedenPracticar()).find({r => r.max(r.caloriasQueLeHaceQuemarA(persona))})})
    method rutinasMasExigentesPara(persona) = predios.map({p => p.rutinaMasExigentePara(persona)})
}

class Predio {
    const property rutinas = #{}


    method sumaDeTodasLasCaloriasQueSeQuemanPara(persona) = rutinas.sum({r => r.caloriasQueSeConsumen(persona.tiempoQueEjercita())})

    method esTranquiPara(persona) = rutinas.any({r => r.caloriasQueSeConsumen(persona.tiempoQueEjercita()) < 500})

    method rutinaMasExigentePara(persona) = rutinas.max({r => r.caloriasQueSeConsumen(persona.tiempoQueEjercita())})
}

