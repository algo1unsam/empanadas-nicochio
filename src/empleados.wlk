object baigorria {

	var property sueldo = 15000
	var property empanadasVendidas
	var valorDeLaEmpanada = 15
	var dinero = 0
	var deuda = 0
	var difernecia
	// PIRULO??
	var pirulo

	method VendeEmpanadas() {
		empanadasVendidas += 1
	}
	

	method calcularSueldo() {
		sueldo = empanadasVendidas * valorDeLaEmpanada
	}
	
	// por qué se llama adicional???	
	method cobrarSueldo(adicional) {
		sueldo = adicional
		dinero = sueldo
	}

	// y esto??
	method dineroEnSueldo() {
	}

	method gastar(cuanto) {
		if (dinero >= cuanto) {
			dinero = dinero - cuanto
		} else {
			// difernecia (a parte de que está mal escrito :P) sólo lo usas acá
			// suena a que debería ser una variable local (y no un atributo del objeto)
			// por otro lado, me parece que tampoco la necesitas acá
			// deuda = deuda + cuanto
			// dinero = 0
		
			difernecia = cuanto - dinero
			dinero = self.totalDinero() - dinero
			deuda = deuda + difernecia
			
		}
	// deuda = +cuanto
	}

	// revisalo, pero sospecho que sueldo también está medio de mas... 
	// con saber cuanta guita tenes, y tener el método que calculo cuanto cobra es suficiente
	method pagar() {
		if (sueldo >= deuda) {
			dinero = sueldo - deuda
			deuda = 0
		}
		else {
			sueldo= 0 
			deuda = deuda - dinero
			dinero = self.totalDinero() - dinero
			// TODO : DEVOLVER MENSAJE DE ERROR
		}
	}

	method totalDeuda() {
		return deuda
	}

	method totalDinero() {
		return dinero
	}

}

object galvan {

	var property dinero = 300000

	method pagarA(empleado, adicional) {
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo(adicional)
	}

}

// probar haciendo que Galván le pague a Baigorria. Se rompe. ¿Por qué?
/* se rompe ya que baigorria no tiene un methodo que se llame "cobrarSueldo" */
/*¿qué método o métodos hay que agregar, en qué objeto u objetos, 
 * para que Galván le pueda pagar el sueldo a cualquiera de los dos empleados? */
// hay que agregar el methodo cobrarSueldo en los objectos de baigorria, galvan y gimenez para que funcione,
//y a su vez con esta modificacion hago que sea polimorfico !



/* prueba en el repel
 * >>> baigorria.gastar(4000)
>>> baigorria.gastar(8000)
>>> baigorria.pagar()
>>> baigorria.gastar(25000)
>>> baigorria.totalDeuda()
22000
>>> baigorria.cobrarSueldo(15000)
>>> baigorria.pagar()
>>> baigorria.totalDeuda()
7000
>>> baigorria.totalDinero()
0
>>> 
 */
