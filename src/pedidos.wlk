import rodados.*
import trafic.*

class Pedidos {

    var property distancia
    var property tiempoMax 
    var property cantPasajeros
    var property coloresIncop = #{}

    method velocidadRequerida() {
        return self.distancia() / self.tiempoMax()
    }

    method cumple(unAuto) {
        return (unAuto.velocidadMaxima() - self.velocidadRequerida()).abs() > 10 and unAuto.capacidad() >= self.cantPasajeros() and not coloresIncop.any({ color => color == unAuto.color()})
    }

    method acelerar() {
        if (tiempoMax > 0){tiempoMax -= 1} 
    }

    method relajar() {
        tiempoMax += 1
    }

}

