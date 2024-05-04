import personajes.*

object equipo {
	var jugadorIzquierdo
	var jugadorDerecho
	var directorTecnico
	
	
	method asignarPosicionIzquierda(persona){
		jugadorIzquierdo = persona
	}
	
	method asignarPosicionDerecha(persona){
		jugadorDerecho = persona
	}
	
	
	method rotarPosiciones(){
		const jugador = jugadorIzquierdo
		self.asignarPosicionIzquierda(jugadorDerecho)
		self.asignarPosicionDerecha(jugador)
	}
	
	
	method incorporarNuevoDt(persona){
		if (directorTecnico == null || persona.energia() > directorTecnico.energia()){
				
			directorTecnico = persona
		} 
	}
	
	method energiaPromedio(){
		return (jugadorIzquierdo.energia() + jugadorDerecho.energia() + directorTecnico.energia()) / 3
	}
	
	method sonFelices(){
		return jugadorIzquierdo.estaFeliz() && jugadorDerecho.estaFeliz() && directorTecnico.estaFeliz()
	}
}