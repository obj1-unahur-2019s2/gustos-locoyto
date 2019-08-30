import objetos.*

object estefania {
	method leGusta(objeto) { return objeto.color().esFuerte() }
}

object rosa {
	method leGusta(objeto) {  return objeto.peso().between(0,2000) }  
}

object luisa {
	method leGusta(objeto) {  return objeto.material().brilla()}  
}

object juan {
	method leGusta(objeto) {  
		return objeto.peso().between (1200,2000) || not objeto.color().esFuerte() 
	}
}