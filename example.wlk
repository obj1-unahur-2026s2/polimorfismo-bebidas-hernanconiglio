object tito {
  var peso = 70
  var bebidaConsumida = terere
  var dosis = 10

  method peso() = peso
  method cambiarPeso(nuevoPeso) {peso=nuevoPeso}

  method consumir(cantidad, bebida) {
    bebidaConsumida = bebida
    dosis = cantidad
  }

  method velocidad() {
    return bebidaConsumida.rendimientoQueOtorga(dosis,self)
    * 490 / peso
  }

  method esFeliz() = self.velocidad() >= 7
}

object pepe {
  var peso = 80
  var bebidaConsumida = whisky
  var dosis = 10
  var edad = 30

  method peso() = peso
  method cambiarPeso(nuevoPeso) {peso=nuevoPeso}
  method cumplirAnios() {edad += 1}

  method consumir(cantidad, bebida) {
    bebidaConsumida = bebida
    dosis = cantidad
  }

  method velocidad() {
    return (bebidaConsumida.rendimientoQueOtorga(dosis,self)
    * 490 / peso) - if(edad>30) 10 else 0 
  }
}

object whisky {
  method rendimientoQueOtorga(dosisDeWhisky,unDeportista) {
    return 0.9 ** dosisDeWhisky
  } 
}

object terere {
  method rendimientoQueOtorga(dosisDeTerere,unDeportista) {
    return (0.1 * dosisDeTerere).max(1)
  }
}

object cianuro {
  method rendimientoQueOtorga(dosisDeCianuro,unDeportista) {
    return if(unDeportista.peso() > 70) unDeportista.peso() * 0.01 + dosisDeCianuro else 0
  }
}
