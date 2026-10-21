class Rutina {
    const property tiempo
    //const property intensidad
    var property intensidad


    method caloriasQueSeConsumen() = 100 * (tiempo - self.descanso()) * intensidad

    method descanso() 
}



class Running inherits Rutina {
    override method descanso() = if(tiempo > 20){
        5
    } else{
        2
    }   
}

class Maraton inherits Running {
    override method caloriasQueSeConsumen(){
        return super()*2
    }
}

class Remo inherits Rutina {
    override method intensidad() = 1.3

    override method descanso() = tiempo/5
}

class RemoDeCompeticion inherits Remo {
    override method intensidad() = 1.7

    //El descanso son 3 minutos menos de lo que se descansa en una rutina de remo normal. 
    //Pero ojo, si ese valor es menor a 2, entonces es 2 (Tip: usar el método max de los números)
    override method descanso() = (super()-3).max(2)
}