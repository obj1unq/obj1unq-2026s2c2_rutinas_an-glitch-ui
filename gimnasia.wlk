class Rutina {
    const property tiempo
    const property intensidad


    method caloriasQueSeConsumen() = 100 * (tiempo - descanso) * intensidad
}



class Running inherits Rutina {
}

class Maraton inherits Rutina {

}

class Remo inherits Rutina {
    
}

class RemoDeCompeticion inherits Rutina {
    
}