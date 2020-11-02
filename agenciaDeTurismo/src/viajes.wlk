import mediosDeTransporte.*
import localidades.*
class Viaje {
	var localidadOrigen
	var localidadDestino
	var medioDeTransporte
	
	method getOrigen(){
		return localidadOrigen
	}
	
	method getDestino(){
		return localidadDestino
	}
	
	method getMedioDeTransporte(){
		return medioDeTransporte
	}
	
	method distanciaDeViaje(){
		var maximo = self.getOrigen().getUbicacion().max(self.getDestino().getUbicacion())
		var minimo = self.getOrigen().getUbicacion().min(self.getDestino().getUbicacion())
		return maximo-minimo
	}
	
	method calcularPrecio(){
		return self.getDestino().getPrecio() + self.distanciaDeViaje() * self.getMedioDeTransporte().getPrecio()
	}
}
const lTBsAs = new Viaje(localidadOrigen = lasToninas, localidadDestino = buenosAires, medioDeTransporte = avion)
const bsAsLT = new Viaje(localidadOrigen = buenosAires, localidadDestino = lasToninas, medioDeTransporte = avion)
const bsAsMdq = new Viaje(localidadOrigen = buenosAires, localidadDestino = marDelPlata, medioDeTransporte = avion)