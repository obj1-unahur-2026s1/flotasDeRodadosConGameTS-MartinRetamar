import pedidos.*
class Dependencia {
  var cantidadDeEmpleados = 0
  const foltaDeRodados = [] 
  const property pedidos = [] 

  method agregarRodado(rodado) {foltaDeRodados.add(rodado)}
  method agregarRodados(rodados) {foltaDeRodados.addAll(rodados)}
  method quitarRodado(rodado) {foltaDeRodados.remove(rodado)}

  method pesoTotal() = foltaDeRodados.sum({r => r.peso()})
  method estaBienEqulibrado() = foltaDeRodados.size() >= 3 and foltaDeRodados.all({r => r.velocidadMaxima() > 100})
  method capacidadTotalDeColor(color) = self.rodadosDeColor(color).sum({r => r.capacdad()})
  method rodadosDeColor(color) = foltaDeRodados.filter({r => r.color() == color})
  method colorDelRodadoMasRapido() = foltaDeRodados.max({r => r.velocidadMaxima()}).color()
  method capacidadFaltante() = cantidadDeEmpleados - self.capacidadTotalDeFlota()
  method capacidadTotalDeFlota() = foltaDeRodados.sum({r => r.capacdad()})
  method esGrande() = cantidadDeEmpleados >= 40 and foltaDeRodados.size() >= 5 

  // Para pedidos
  method agregarPedido(pedido){pedidos.add(pedido)}
  method agregarPedidos(listaDePedidos) {pedidos.addAll(listaDePedidos)}
  method quitarPedido(pedido) {pedidos.remove(pedido)}
  method quitarPedidos(listaDePedidos) {pedidos.remove(listaDePedidos)}

  method totalDePasajerosEnPedidos() = pedidos.sum({p => p.cantidadDePasajeros()})
  method pedidosQueNoPuedenSerSatisfechosPorNingunAuto() = foltaDeRodados.filter({pedido => self.ningunAutoPuedeSatisfacerPedido(pedido)})  
  method ningunAutoPuedeSatisfacerPedido(pedido) = foltaDeRodados.all({rodado => !pedido.puedeSerSatisfechoCon(rodado)})
  method todosLosPedidosTienenImcompatible(color) = pedidos.all({p => p.coloresIncompatibles().contains(color)})
  method relajarTodosLosPedidos() {pedidos.forEach({p => p.relajar()})}

}