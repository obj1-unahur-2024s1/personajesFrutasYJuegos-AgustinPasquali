import personajes.*
import ciudades.*

object voley{
	method energiaQueConsume(tiempo){
		return tiempo * 2
	}
	
	method kcalQuemadas(tiempo){
		return 400/60 * tiempo
	}
}

object futbol{
	var property energia = 10
	
	method energiaQueConsume(tiempo){
		return energia
	}
	
	method kcalQuemadas(tiempo){
		return 800/60 * tiempo
	}
}

object aerobic{
	method energiaQueConsume(tiempo){
		return -(ciudad.temperatura() / 2)
	}
	method kcalQuemadas(tiempo){
		return 550/60 * tiempo
	}
}

object basquet{
	method energiaQueConsume(tiempo){
		return 5 + (tiempo * 3)
	}
	
	method kcalQuemadas(tiempo){
		return 600/60 * tiempo
	}
}
	
