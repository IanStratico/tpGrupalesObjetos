import destinos.*
object barrileteCosmico {
	
	var destinos = [marDeAjo,marDelPlata,lasToninas,buenosAires]
	
	method destinosMasImportantes() {
		return destinos.filter({destino => destino.getPrecio() > 2000})
	}
	
	method aplicarDescueto(descuento) {
		destinos.forEach({destino => destino.ponerDescuento(descuento)})
		destinos.forEach({destino => destino.agregarEquipo("Certificado de Descuento")})
	}
	
	method esEmpresaExtrema() {
		if(destinos.any({destino => destino.esPeligroso()})){
			return true
		}
		else {
			return false
		}
	}
	
	method getDestinos(){
		return destinos 
	}
	method getPrecios() {
		return destinos.map({destino => destino.getPrecio()}) 
	}
	
}
