import localidades.*
import viajes.*
import barrileteCosmico.*
import mediosDeTransporte.*
class Usuario {
	const nombre 
	var viajesQueHizo 
	var billetera 
	var seguidos 
	var localidadOrigen
	var posiblesMediosDeTransporte = [avion,tren,micro,barco]  
	
	method setBilletera(nuevoValor){
		billetera = nuevoValor
	}
	
	method getOrigen(){
		return localidadOrigen
	}
	
	method setLocalidadOrigen(nuevaLocalidad){
		localidadOrigen = nuevaLocalidad
	}
	
	method hacerUnViaje(viaje){ 
		var precioViaje = viaje.calcularPrecio()
		if(billetera >= precioViaje){
			viajesQueHizo.add(viaje)
			self.setBilletera(billetera - precioViaje)
			self.setLocalidadOrigen(viaje.getDestino())
		}
	}
	
	method cantidadDeKilometros(){ 
		return  viajesQueHizo.sum({viajes => viajes.distanciaDeViaje()})
	}
	
	method seguirUsuario(otroUsuario){
		seguidos.add(otroUsuario)
		otroUsuario.seguirUsuario(self)
	}
	method getSeguidores(){
		return seguidos
	}
	method getViajesQueHizo() {
		return viajesQueHizo 
	}
	method getBilletera() {
		return billetera 
	}
	method getMedioDeTransporte()
}
class Empresario inherits Usuario {
	
	override method getMedioDeTransporte(){
		return posiblesMediosDeTransporte.max({transporte => transporte.getTiempo()})
	}
}

class Estudiante inherits Usuario {
	override method getMedioDeTransporte(){
		posiblesMediosDeTransporte = posiblesMediosDeTransporte.min({transporte => transporte.getPrecio()})
		return posiblesMediosDeTransporte.max({transporte => transporte.getTiempo()})
	}
}

class Familia inherits Usuario {
	override method getMedioDeTransporte(){
		return posiblesMediosDeTransporte.anyOne()
	}
}
const pabloHari = new Empresario(nombre = "PHari", viajesQueHizo = [], billetera = 9500, seguidos = [], localidadOrigen = buenosAires)
const pabloMarmol = new Estudiante(nombre = "PMar", viajesQueHizo = [] , billetera = 5000, seguidos =[] ,localidadOrigen = marDelPlata)
