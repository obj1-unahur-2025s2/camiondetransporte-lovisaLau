object knigtTRider {
    method peso() = 500
    method peligrosidad() = 10
    method esPesoPar() = self.peso().even() //.even() devuelve si es par 

}

object bumblebee{
    var esAuto = true

    method transformateEnAuto(){
        esAuto = true
    }

    method transformateEnRobot(){
        esAuto = false
    }

    method esPesoPar() = self.peso().even()
    method peso() = 800
    method peligrosidad() = if(esAuto) 15 else 30 // valor ternario
}

object ladrillos{
    var cantidad = 10

    method cantidad(nuevaCant){
        cantidad = nuevaCant
    }

    method peso() = 2*cantidad
    method peligrosidad() = 2    
    method esPesoPar() = self.peso().even()

}

object arena{
    var property peso = 0
  /*
    method esPesoPar() = self.peso().even()
    method setearPeso(nuevoPeso){
        peso = nuevoPeso
    }

    method peso() = peso
*/
    /*
    OTRA FORMA
    var property peso = 0
    property te contruye solo un getter y un setter
    solo es correcto en este caso donde necesito consultar el peso
    y tambien poder modificarlo
    si el peso inicial fuera 50 y se puede agregar, no seria correcto un property
    ya que no respetaria los 50 de peso inicial. lo puedo setear con el peso que quiero.

    */

    method peligrosidad() = 1
}

object bateriaAntiarea {
  var estaConMisiles = false

    method esPesoPar() = self.peso().even()
  method cargarMisiles(){
    estaConMisiles = true
  }

  method descargarMisiles() {
    estaConMisiles = false
  }

  method peso() = if(estaConMisiles) 300 else 200

  method peligrosidad() = if(estaConMisiles)100 else 0
}

object contenedor {
  const cosasAdentro = []
  
  method agregar(unaCosa){
    cosasAdentro.add(unaCosa)
  }

    method esPesoPar() = self.peso().even()
  method agregarVarias(variasCosas){
    cosasAdentro.addAll(variasCosas)
  }

  method quitar(unaCosa){
    cosasAdentro.remove(unaCosa)
  }

  method peso() =  100 + cosasAdentro.sum({cosa => cosa.peso()})

  method peligrosidad() =    
    if (cosasAdentro.isEmpty()) 0 
    else cosasAdentro.max({c => c.peligrosidad()}).peligrosidad()
  // max no devuelve el valor, devuelve el objeto, por eso agregamos el .peligrosidad() para que devuelva el valor.
}

object residuos {
    var property peso = 0

    method esPesoPar() = self.peso().even()
   method peligrosidad() = 200
}

object embalaje {
  
  var cosaEnvuelta = arena

    method envolver(unaCosa){
        cosaEnvuelta = unaCosa
    }

  method peso() = cosaEnvuelta.peso()
  method esPesoPar() = self.peso().even()
  method peligrosidad() = cosaEnvuelta.peligrosidad() * 0.5
}
/*
object nada {
  method peso() = 0
  method peligrosidad() = 0
}
*/
