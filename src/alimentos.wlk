import colores.*
object manzana {
	var color = verde
	
	method color() = color
	method consumir() {
		return color.energiaQueOtorga()
	}
	method nuevoDia(){
		color =  rojo
	}
	method trasnformarAAmarillo(){
		color =  amarillo
	}
}


object mandarina {
	var pesoEnGramos = 60
	
	method color() = naranja
	
	method consumir(){
		return 2*(pesoEnGramos/10)
	}
	method nuevoDia(){
		pesoEnGramos =  pesoEnGramos *0.9
	}	
}


object banana {
	
	method consumir() {
		return amarillo.energiaQueOtorga() 
	}
	method nuevoDia(){}	
} 

object agua{	
	method consumir() = 0
	method nuevoDia(){}	
} 