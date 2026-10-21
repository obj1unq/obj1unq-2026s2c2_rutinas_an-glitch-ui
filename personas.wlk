import gimnasia.*

class Persona {
    //var property rutinaQueAplica  
    var property peso
    const property tiempoQueEjercita


    method pesoQuePierde(r, t) = r.caloriasQueSeConsumen(t) / self.caloriasPorKilo()

    method caloriasPorKilo()

    method aplicarRutinaPor(r, t) {
        self.validarSiPuedeAplicarRutina(r, t)
        r.tiempo(tiempoQueEjercita)
        peso = peso - self.pesoQuePierde(r, t)
    }

    method validarSiPuedeAplicarRutina(r, t) {
        if(!self.puedeAplicarRutina(r, t)){
            self.error("No puede aplicar la rutina")
        }
    }

    method puedeAplicarRutina(r, t) 
}



class Sedentario inherits Persona {
    override method caloriasPorKilo() = 7000

    override method puedeAplicarRutina(r, t) = peso>50
}

class Atleta inherits Persona {
    override method tiempoQueEjercita() = 90

    override method pesoQuePierde(r, t) = super(r, t)-1

    override method caloriasPorKilo() = 8000

    override method puedeAplicarRutina(r, t) = r.caloriasQueSeConsumen(t)>10000
}
