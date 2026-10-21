import gimnasia.*

class Persona {
    //var property rutinaQueAplica  
    var property peso


    method pesoQuePierde(r) = r.caloriasQueSeConsumen(self.tiempoQueEjercita()) / self.caloriasPorKilo()

    method caloriasPorKilo()

    method aplicarRutina(r) {
        self.validarSiPuedeAplicarRutina(r)
        peso = peso - self.pesoQuePierde(r)
    }

    method validarSiPuedeAplicarRutina(r) {
        if(!self.puedeAplicarRutina(r)){
            self.error("No puede aplicar la rutina")
        }
    }

    method puedeAplicarRutina(r) 

    method tiempoQueEjercita()
}



class Sedentario inherits Persona {
    const tiempoQueEjercita = 0


    override method caloriasPorKilo() = 7000

    override method puedeAplicarRutina(r) = peso>50

    override method tiempoQueEjercita() = tiempoQueEjercita
}

class Atleta inherits Persona {
    override method tiempoQueEjercita() = 90

    override method pesoQuePierde(r) = super(r)-1

    override method caloriasPorKilo() = 8000

    override method puedeAplicarRutina(r) = r.caloriasQueSeConsumen(self.tiempoQueEjercita())>10000
}
