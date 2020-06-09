import wollok.game.*
import colores.*

class ChevroletCorsa {

    const property capacidad = 4
    const property velocidadMaxima = 150
    const property peso = 1300
    var property color
//Etapa 4    
    var property image 
    var property position = game.origin()
    var property positionLista = [position]

    method pasoPor(posicion) {
        return positionLista.contains(posicion)
    }

    method pasoPorColumnas(numero) {
        return positionLista.map({ posi => posi.y() }).contains(numero)
    }

    method recorrioColumnas(lista_de_numeros) {
        return positionLista.map({ posi => posi.y() }) == lista_de_numeros
    }

    method agregarPosicion(){
            positionLista.add(self.position())
        }
//    method iniciar(){
//        self.moverAuto()
//    }
         
    method cambiarColor(){
        keyboard.a().onPressDo({self.cambiarColor(azul)  })
        keyboard.v().onPressDo({self.cambiarColor(verde)  })
        keyboard.r().onPressDo({self.cambiarColor(rojo)  })   
    }   
    method cambiarColor(colorACambiar){image = colorACambiar.image()}
    
    
    
    method moverAuto(){
        keyboard.up().onPressDo({self. moverseHacia(self.position().up(1))})
        keyboard.down().onPressDo({self. moverseHacia(self.position().down(1))})
        keyboard.right().onPressDo({self. moverseHacia(self.position().right(1))})
        keyboard.left().onPressDo({self. moverseHacia(self.position().left(1))})
        
//        keyboard.up().onPressDo({self.moveteArriba()})
//        keyboard.down().onPressDo({self.moveteAbajo()})
//        keyboard.right().onPressDo({self.moveteDerecha()})
//        keyboard.left().onPressDo({self.moveteIzquierda()})
    }
    
    method  moverseHacia(direccion){
        position = direccion
    }
  
//    method moveteDerecha(){
//        self.position(self.position().right(1))
//    }
//    
//    method moveteIzquierda(){
//        self.position(self.position().left(1))
//    }
//    
//    method moveteArriba(){
//        self.position(self.position().up(1))
//    }
//    
//    method moveteAbajo(){
//        self.position(self.position().down(1))
//    }

//    method cambiarAuto(){
//        keyboard.num1().onPressDo({sarsa.cambiarA()})
//    }
//    
//    method cambiarA(otroAuto){
//        autoActual = otroAuto
//    }

//    method todos(){
//        .forEach({auto => auto.cambiarColor()})
//    }
}

class RenaultKwid {

    var property tanque
    const property color = "azul"

    method capacidad() {
        return tanque.capacidad()
    }

    method velocidadMaxima() {
        return tanque.velocidadMaxima()
    }

    method peso() {
        return tanque.peso()
    }

}

object conTanque {

    method capacidad() {
        return 3
    }

    method velocidadMaxima() {
        return 120
    }

    method peso() {
        return 1350
    }

}

object sinTanque {

    method capacidad() {
        return 4
    }

    method velocidadMaxima() {
        return 110
    }

    method peso() {
        return 1200
    }

}

class Especial {

    var property capacidad
    var property velocidad
    var property color
    var property peso

}

