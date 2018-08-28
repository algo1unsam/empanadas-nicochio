object baigorria {

	var property sueldo = 15000
	var property empanadasVendidas
	var valorDeLaEmpanada = 15
	var dinero = 0
	var deuda = 0
	var difernecia
	var pirulo

	method VendeEmpanadas() {
		empanadasVendidas += 1
	}
	

	method calcularSueldo() {
		sueldo = empanadasVendidas * valorDeLaEmpanada
	}

	method cobrarSueldo(adicional) {
		sueldo = adicional
		dinero = sueldo
	}

	method dineroEnSueldo() {
	}

	method gastar(cuanto) {
		if (dinero >= cuanto) {
			dinero = dinero - cuanto
		} else {
		
			difernecia = cuanto - dinero
			dinero = self.totalDinero() - dinero
			deuda = deuda + difernecia
			
		}
	// deuda = +cuanto
	}

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
