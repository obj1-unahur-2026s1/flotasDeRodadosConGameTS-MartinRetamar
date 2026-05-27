class ChevroletCorsa {
  const property color

  method capacidad() = 4
  method velocidadMaxima() = 150 
  method peso() = 1300  

}

class RenoKwid {
  const property tieneTanque 

  method capacidad() {if (tieneTanque) 4 else 3}
  method velocidadMaxima() {if (tieneTanque) 120 else 110}
  method peso() = if(tieneTanque) 1350 else 1200
}

object trafic {
  var interior = comodo
  var motor = pulenta

  method cambiarInterior(nuevoInterior) {interior = nuevoInterior}
  method cambiarMotor(nuevoMotor) {motor = nuevoMotor}

  method capacidad() = interior.capacidad()
  method velocidadMaxima() = motor.velocidadMaxima()
  method peso() = 4000 + interior.peso() + motor.peso()
  method color() = 0 // rojo 
}

class AutoEspecial {
  const property capacidad
  const property velocidadMaxima
  const property peso
  const property color 
}


// Objetos de trafic
object comodo {
  method capacdad() = 5
  method peso() = 700
}

object popular {
  method capacdad() = 12
  method peso() = 1000
}

object pulenta {
  method velocidadMaxima() = 130
  method peso() = 800
}

object bataton {
  method velocidadMaxima() = 80
  method peso() = 500
}

// Colores 
object rojo {
  
}
object verde {
  
}
object azul {
  
}
object beige {
  
}