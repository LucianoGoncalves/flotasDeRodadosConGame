object trafic {

    var property interior
    var property motor
    const property color = "blanco"

    method capacidad() {
        return interior.capacidad()
    }

    method velocidadMaxima() {
        return motor.velocidadMaxima()
    }

    // method color(){return "blanco"}
    method peso() {
        return interior.peso() + motor.peso() + 4000
    }

}

object interiorComodo {

    method capacidad() {
        return 5
    }

    method peso() {
        return 700
    }

}

object interiorPopular {

    method capacidad() {
        return 12
    }

    method peso() {
        return 1000
    }

}

object motorPulenta {

    method velocidadMaxima() {
        return 130
    }

    method peso() {
        return 800
    }

}

object motorBataton {

    method velocidadMaxima() {
        return 80
    }

    method peso() {
        return 500
    }

}

