class MedioDeTransporte {
	var tiempoPorKm // en minutos
	var precioPorKm = null
	
	method getTiempo(){
		return tiempoPorKm
	}
	
	method getPrecio()
	
}
class Avion inherits MedioDeTransporte{

	var cantidadDeTurbinas
	var nivelDeImpulsoPorTurbina
	
	override method getPrecio(){
		precioPorKm = cantidadDeTurbinas * nivelDeImpulsoPorTurbina
		return precioPorKm
	}
}

class Micro inherits MedioDeTransporte{
	
	override method getPrecio(){
		precioPorKm = 5000
		return precioPorKm
	}
}

class Tren inherits MedioDeTransporte{
	
	override method getPrecio(){
		precioPorKm = 2300 * 1.6
	}
}

class Barco inherits MedioDeTransporte{
	var probabilidadDeChocar
	
	override method getPrecio() {
		precioPorKm = probabilidadDeChocar * 1000
		return precioPorKm
	}
}

const avion =  new Avion(tiempoPorKm = 1,cantidadDeTurbinas = 2, nivelDeImpulsoPorTurbina = 10)
const micro = new Micro(tiempoPorKm = 5)
const barco = new Barco(tiempoPorKm = 3,probabilidadDeChocar = 0.2)
const tren = new Tren(tiempoPorKm = 4)