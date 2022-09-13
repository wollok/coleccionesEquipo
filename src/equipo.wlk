object martin {
	method energia() = 100
	
	method esDeportista() = true
}

object juana {
	var energia = 150

	method energia() = energia
	
	method energia(nueva){ 
		energia = nueva
	}
	method alterar(){
		energia = energia -	50
	}
	
	method esDeportista() = energia > 100
}

object pepe {

	var cansado = false
	
 	method energia() = if (cansado) 50 else 100
	
	method alterar() {
		cansado = cansado.negate()
	}
		
	method esDeportista() = cansado.negate()
}


object equipo {

	const integrantes = []
	
	
	method sonTodosDeportistas() =
	
		integrantes.all({i=>i.esDeportista()})
	
	method cantidadJugadores() =
		integrantes.size()
	
	method jugadorConMasEnergia() 
		= integrantes.max({juga => juga.energia()} )
		
	method energiaPromedio() 
		= integrantes.sum({juga => juga.energia()}) / integrantes.size()
	
		
	method nuevoJugador(nuevo) {
		integrantes.add(nuevo)
	}
	
	method jugadoresDeportistas() =

		integrantes.filter({p => p.esDeportista()}) 
		 
		
	
	method expulsar(fulano){
		integrantes.remove(fulano)
	}	
	
	method expulsarATodos(){
		integrantes.clear()
	}
	
	
	
	method jugarPartido(){
	
		integrantes.forEach{j => j.alterar()}
	}
	
	
}

