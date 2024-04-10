object olivia{
	var consentracion = 6
	
	method recibeMasaje(){
		consentracion += 3
	}
	
	method banoDeVapor(){
		consentracion +=4
	}
	
	method discutir(){
		consentracion -= 1
	}
	
	method gradoDeConcentracion(){
		return consentracion
	}
}
	
object bruno{
	var felicidad = true
	var sed = false
	var peso = 55000
	
	method recibeMasaje(){
		felicidad = true
	}
	
	method banoDeVapor(){
		peso -= 500
		sed = true
	}
	
	method tomarAgua(){
		sed = false
	}
	
	method comerFideos(){
		peso += 250
		sed = true
	}
	
	method correr(){
		peso -= 300
	}
	
	method verElNoticiero(){
		felicidad = false
	}
	
	method estaPerfecto(){
		return (felicidad and sed and peso.between(50, 70))
	}
	
	method mediodiaEnCasa(){
		self.comerFideos()
		self.tomarAgua()
		self.verElNoticiero()
	}
}
object ramiro{
	var contracturado = 0
	var pielGrasosa = true
	
	method recibeMasaje(){
		contracturado -= 2
		if (contracturado <= 0) contracturado = 0
	}
	
	method banoDeVapor(){
		pielGrasosa = false
	}
	
	method comerBigMac(){
		pielGrasosa = true
	}
	
	method bajaAlaFosa(){
		pielGrasosa = true
		contracturado += 1
	}
	
	method juegaAlPaddle(){
		contracturado += 3
	}
	
	method diaDeTrabajo(){
		self.bajaAlaFosa()
		self.comerBigMac()
		self.bajaAlaFosa()
	}
}
object spa{
	method atender(persona){
		persona.recibeMasaje()
		persona.banoDeVapor()
	}
}
