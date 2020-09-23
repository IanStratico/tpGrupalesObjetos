import destinos.*
object pabloHari {
	const nombre = "PHari"
	var conoce = [lasToninas,buenosAires] //"Last Toninas","Good Airs"
	var billetera = 1500
	var seguidos = []  
	
	method setBilletera(nuevoValor){
		billetera = nuevoValor
	}
	
	method volarAUnDestino(destino){
		if(billetera >= destino.getPrecio()){
			conoce.add(destino)
			self.setBilletera(billetera - destino.getPrecio())
			return "Viaje Hecho"
		}
		else{
			return "No Puede Viajar"
		}
		
		
	}
	
	method cantidadDeKilometros(){
		return  conoce.map({destino => destino.getPrecio()}).sum() * 0.1
	}
	
	method seguirUsuario(otroUsuario){
		seguidos.add(otroUsuario)
		otroUsuario.seguiUsuario(self)
	}
	method getConoce() {
		return conoce 
	}
	method getBilletera() {
		return billetera 
	}
	
	
}
