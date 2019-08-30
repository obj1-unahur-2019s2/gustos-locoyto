import objetos.*
import personas.*

object bolichito {
	var objetoEnMostrador
	var objetoEnVidriera
	
	method ponerEnMostrador(objeto) { objetoEnMostrador = objeto }
	method ponerEnVidriera(objeto) { objetoEnVidriera = objeto }
	
	method esBrillante() { 
		
		return objetoEnMostrador.material().brilla() and objetoEnVidriera.material().brilla()
	}
	
	method esMonocromatico() {
		return objetoEnMostrador.color() == objetoEnVidriera.color()
	}
	
	method estaDesequilibrado() {
		return objetoEnMostrador.peso() > objetoEnVidriera.peso()
	}
	
	method tieneAlgoDeColor(color) {
		return objetoEnMostrador.color() == color || objetoEnVidriera.color() == color
	}
	
	method puedeMejorar() {
		return self.esMonocromatico() || self.estaDesequilibrado() 
	}
	
	method puedeOfrecerleAlgoA(persona) {
		return persona.legusta(objetoEnMostrador) || persona.legusta(objetoEnVidriera)
	}
}