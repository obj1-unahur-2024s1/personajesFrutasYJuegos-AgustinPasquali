import colores.*
import alimentos.*
import deportes.*

object martin {
	var energia = 100
	var tieneHambre = false
	var actividadDiaria = 0
	var alimentoEnDespensa = agua
	
	method estaFeliz() {
		return ((energia > 80 || actividadDiaria >= 2) &&  not tieneHambre )
	}
	
	method nuevoDia() {
	 	energia *= 1.5
	 	alimentoEnDespensa.nuevoDia()
	 	actividadDiaria = 0
	}
	
	method guardarFruta(frutaAGuardar){
		alimentoEnDespensa = frutaAGuardar
	}
	
	method consumirAlimento(){			
		energia += alimentoEnDespensa.consumir()
		alimentoEnDespensa = agua
		tieneHambre = false 
	}
	
	method hacerDeporte(deporte, tiempo){
		energia = 0.max(energia - deporte.energiaQueConsume(tiempo))
		actividadDiaria  += 1
		tieneHambre = true
	}
}

object maria {
	var endorfina = 100
	var property amuletoEquipado = rojo
	
	method endorfina() = endorfina
	
    method estaFeliz(){
    	return endorfina > amuletoEquipado.energiaQueOtorga()
    }
    
    method nuevoDia(){		
	    endorfina = 100
	}
		
	method energia()= endorfina * 2 + amuletoEquipado.energiaQueOtorga()
	
	method hacerDeporte(deporte, tiempo){
		endorfina = 0.max(deporte.energiaQueConsume(tiempo)/2)
	}	
}

object pepe{
	method energia() = 77
	method estaFeliz() = true
}

object agustin {
	var energia = 90	
	var tiempoEjercitadoHoy = 0
	
	method energia() = energia
	
	method estaFeliz() = energia >= 50

	method estaCansado() = tiempoEjercitadoHoy >= 60 || energia < 30
	
	
	method consumirEnergizante(){
		energia *= 1.25 
	}	
	
	method nuevoDia(){		
	    energia += 50 
	    tiempoEjercitadoHoy = 0
	}
	
	method hacerDeporte(deporte, tiempo){
		self.consumirEnergizante()
		energia = 0.max(energia - deporte.kcalQuemadas(tiempo) * 0.2)
        tiempoEjercitadoHoy += tiempo
	}	
							 
}