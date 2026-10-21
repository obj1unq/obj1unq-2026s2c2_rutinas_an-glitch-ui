class Rutina {
    //var property tiempo =0
    //const property intensidad
    //var property intensidad

    // El tiempo es un dato que se conoce al momento de consultar cuántas calorías se consumen...
    method caloriasQueSeConsumen(tiempo) = 100 * (tiempo - self.descanso(tiempo)) * self.intensidad()

    method descanso(t) 

    method intensidad()
}



class Running inherits Rutina {
    const intensidad = 1.2


    override method descanso(t) = if(t > 20){
        5
    } else{
        2
    }

    //method intensidad(x){
    //    intensidad = x
    //}

    override method intensidad() = intensidad 
}

class Maraton inherits Running {
    override method caloriasQueSeConsumen(tiempo){
        return super(tiempo)*2
    }
}

class Remo inherits Rutina {
    override method intensidad() = 1.3

    override method descanso(t) = t/5
}

class RemoDeCompeticion inherits Remo {
    override method intensidad() = 1.7

    //El descanso son 3 minutos menos de lo que se descansa en una rutina de remo normal. 
    //Pero ojo, si ese valor es menor a 2, entonces es 2 (Tip: usar el método max de los números)
    override method descanso(t) = (super(t)-3).max(2)   //2.max(super(t))
}