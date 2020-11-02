class Localidad {
	const nombre 
	var equipajeImpresindible 
	var precio  
	const ubicacion
	
	method esPeligroso()
	
	method getEquipaje() {
		return equipajeImpresindible
	}
	
	method getPrecio(){
		return precio
	}	
	
	method ponerDescuento(descuento){
		precio = precio - (precio * (descuento/100))
		self.agregarEquipo("Certificado de Descuento")
	}
	
	method agregarEquipo(equipo){
		equipajeImpresindible.add(equipo)
	}
	
	method esImportante(){
		return self.getPrecio() > 2000
	}
	
	method getUbicacion(){
		return ubicacion
	}
		
}



class Playa inherits Localidad {
	
	override method esPeligroso(){
		return false
	}
}

class Montania inherits Localidad {
	
	var altura
	
	method getAltura(){
		return altura
	}
	
	override method esPeligroso(){
		return equipajeImpresindible.contains("Vacuna Gripal") && self.getAltura() > 5000
	}
	
	override method esImportante(){
		return true
	}
}

class CiudadHistorica inherits Localidad{
	
	var cantidadMuseos
	
	override method esPeligroso(){
		return equipajeImpresindible.contains("Seguro de asistencia al viajero")
	}
	
	method getMuseos(){
		return cantidadMuseos
	}
	
	override method esImportante(){
		super()
		return self.getMuseos() >= 3
	}

}

const marDeAjo = new Playa( 
	nombre = "Garlic's Sea", 
	equipajeImpresindible = ["Caña de pescar","piloto"], 
	precio = 2500, 
	ubicacion = 360
)
const marDelPlata = new Playa(nombre = "Silver's Sea",
	equipajeImpresindible = ["Protector solar","Equipo de Buceo"],
	precio = 1350,
	ubicacion = 404
)
const buenosAires = new CiudadHistorica(nombre = "Good Airs",
	equipajeImpresindible = ["Cerveza","Protector Solar"],
	precio = 1500,
	ubicacion = 0,
	cantidadMuseos = 3
)
const lasToninas = new Playa(nombre = "Last Toninas",
	equipajeImpresindible = ["Vacuna Gripal","Vacuna B","Necronomicon"],
	precio = 3500,
	ubicacion = 337 
)
