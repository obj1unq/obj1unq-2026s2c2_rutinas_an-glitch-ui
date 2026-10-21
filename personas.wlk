import gimnasia.*

class Persona {
    var property rutinaQueAplica  
    var property peso
    const property tiempoQueEjercita


    method pesoQuePierde() = rutinaQueAplica.caloriasQueSeConsumen() / self.caloriasPorKilo()

    method caloriasPorKilo()

    method aplicarRutina() {
        self.validarSiPuedeAplicarRutina()
        rutinaQueAplica.tiempo(tiempoQueEjercita)
        peso = peso - self.pesoQuePierde()
    }

    method validarSiPuedeAplicarRutina() {
        if(!self.puedeAplicarRutina()){
            self.error("No puede aplicar la rutina")
        }
    }

    method puedeAplicarRutina() 
}



class Sedentario inherits Persona {
    override method caloriasPorKilo() = 7000

    override method puedeAplicarRutina() = peso>50
}

class Atleta inherits Persona {
    override method tiempoQueEjercita() = 90

    override method pesoQuePierde() = super()-1

    override method caloriasPorKilo() = 8000

    override method puedeAplicarRutina() = rutinaQueAplica.caloriasQueSeConsumen()>10000
}
