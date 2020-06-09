import wollok.game.*
class Paredes {
    var property image = "pared100.png"
	var property resistencia = 10
	var property position
	
	method desaparece(){
	    if(resistencia <= 0){
	        game.removeVisual(self.image())
	    }
	}
	method esChocada(){
	    resistencia = (resistencia - 1).max(0)
	}
	
	method image(){
	    if (resistencia.between(2, 5)){
	        return "pared50.png"
	    }
	    else if (resistencia <= 1){
	        return "pared10.png"
	    }
	    else{return "pared100.png"
	        
	    }
	}
}
