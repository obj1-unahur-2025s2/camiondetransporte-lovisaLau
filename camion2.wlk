import cosas2.*
object camion {
    const carga = []

    method cargar(unaCosa) {
        carga.add(unaCosa)
    }

    method descargar(unaCosa) {
      carga.remove(unaCosa)
    }

    method pesoTotal() = 1000 + carga.sum({c => c.peso()}) 

    method todoPesoPar() = carga.all({c => c.esPesoPar()})
    //.even() devuelve si es par 

    method algunaCosaPesa(unPeso) = carga.any({c => c.peso() == unPeso})
    
    method primerCosaConPeligrosidad(unValor) = carga.find({c => c.peligrosidad() == unValor})
    // .find() te devuelve el objeto

    method todasLasCosasConMasPeligrosidadQue(unValor) = carga.filter({c => c.peligrosidad() > unValor})

    method cosasSuperanPeligrosidadDe(unaCosa) = carga.filter({c => c.peligrosidad() > unaCosa.peligrosidad()})

    method excedePesoMaximo() = self.pesoTotal() > 2500

    method puedeCircularRuta(nivelPeligrosidad) = self.excedePesoMaximo() && self.todasLasCosasConMasPeligrosidadQue(nivelPeligrosidad).isEmpty() 

    method algunaCosaPesaEntre(valorMin, valorMax) = carga.any({c=> c.peso().between(valorMin, valorMax)})

    method laCosaMasPesada() = carga.max({c => c.peso()})// devuelve el objeto mas pesado
    //                                   ({c => c.peso()}).peso() devuelve el peso de la cosa mas pesada 

}