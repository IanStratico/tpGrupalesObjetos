object marDeAjo {
	const nombre = "Garlic's Sea"
	var equipajeImpresindible = ["Caña de pescar","piloto"]
	var precio = 2500
	var esPeligroso = false
	
	method getPrecio(){
		return precio
	}
	
	method getEquipaje() {
		return equipajeImpresindible
	}
	
	method ponerDescuento(descuento){
		precio = precio - (precio * (descuento/100))
	}
	
	method agregarEquipo(equipo){
		equipajeImpresindible.add(equipo)
	}
	
	method esPeligroso(){
		return esPeligroso
	}
}

object marDelPlata {
	const nombre = "Silver's Sea"
	var equipajeImpresindible = ["Protector solar","Equipo de Buceo"]
	var precio = 1350
	var esPeligroso = false
	
	method getPrecio(){
		return precio
	}
	
	method getEquipaje() {
		return equipajeImpresindible
	}
	
	method ponerDescuento(descuento){
		precio = precio - (precio * (descuento/100))
	}
	
	method agregarEquipo(equipo){
		equipajeImpresindible.add(equipo)
	}
	
	method esPeligroso(){
		return esPeligroso
	}
}

object lasToninas {
	const nombre = "Last Toninas"
	var equipajeImpresindible = ["Vacuna Gripal","Vacuna B","Necronomicon"]
	var precio = 3500
	var esPeligroso = true
	
	method getPrecio(){
		return precio
	}
	
	method getEquipaje() {
		return equipajeImpresindible
	}
	
	method ponerDescuento(descuento){
		precio = precio - (precio * (descuento/100))
	}
	
	method agregarEquipo(equipo){
		equipajeImpresindible.add(equipo)
	}
	
	method esPeligroso(){
		return esPeligroso
	}
}

object buenosAires {
	const nombre = "Good Airs"
	var equipajeImpresindible = ["Cerveza","Protector Solar"]
	var precio = 1500
	var esPeligroso = false
	
	method esPeligroso(){
		return esPeligroso
	}
	
	method getEquipaje() {
		return equipajeImpresindible
	}
	
	method getPrecio(){
		return precio
	}	
	
	method ponerDescuento(descuento){
		precio = precio - (precio * (descuento/100))
	}
	
	method agregarEquipo(equipo){
		equipajeImpresindible.add(equipo)
	}		
}

