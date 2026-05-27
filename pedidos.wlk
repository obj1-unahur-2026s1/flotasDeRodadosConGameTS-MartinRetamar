class Pedido{
    const distanciaARecorrer
    var tiempoMaximo
    const property cantidadDePasajeros
    const property coloresImcompatibles

    method velocidadRequerida() = distanciaARecorrer / tiempoMaximo
    method puedeSerSatisfechoCon(auto) {
        return {
            auto.velocidadMaxima() >= self.velocidadRequerida() + 30 and
            auto.capacidad() >= cantidadDePasajeros and 
            !coloresImcompatibles.contains(auto.color())
        }
    }

    method acelerar() {tiempoMaximo -= 1}
    method relajar() {tiempoMaximo += 1}

}