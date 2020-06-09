import rodados.*
import trafic.*
import pedidos.*

class Dependencia {

    var property empleados
    const property flota = []
    const property pedidos = []

    method agregarAFlota(rodado) {
        flota.add(rodado)
    }

    method quitarDeFlota(rodado) {
        flota.remove(rodado)
    }

    method pesoTotalFlota() {
        return flota.map({ rodado => rodado.peso() }).sum()
    }

    method estaBienEquipada() {
        return flota.size() >= 3 and flota.all({ rodado => rodado.velocidadMaxima() >= 100 })
    }

    method capacidadTotalEnColor(color) {
        return flota.filter({ rodado => rodado.color() == color }).sum({ rodado => rodado.capacidad() })
    }

    method colorDelRodadoMasRapido() {
        return flota.max({ rodado => rodado.velocidadMaxima() }).color()
    }

    method capacidadFaltante() {
        return (empleados - flota.sum({ rodado => rodado.capacidad() })).max(0)
    }

    method esGrande() {
        return empleados >= 40 and flota.size() >= 5
    }

    method agregarAFlotas(unaLista) {
        flota.addAll(unaLista)
    }

// Etapa 3:

    method agregarAPedidos(unPedido) {
        pedidos.add(unPedido)
    }

    method quitarDePedidos(unPedido) {
        pedidos.remove(unPedido)
    }

    method totalPasajerosPedidos() {
        return pedidos.sum({ pedido => pedido.cantPasajeros() })
    }

    method pedidosInsatisfechos() {
        return pedidos.filter({ pedido => not self.puedeSatisfacer(pedido) })
    }

    method puedeSatisfacer(pedido) {
        return flota.any({ rodado => pedido.cumple(rodado) })
    }

    method todosLosPedidosIncompatiblesPorColor(color) {
        return pedidos.all({pedido => pedido.coloresIncop().contains(color)})
    }
    
    method relajarPedidos(){
        return pedidos.forEach({pedido => pedido.relajar()})
    }
}

