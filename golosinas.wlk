object bombon {
    var property precio =  5
    var property peso = 15
    var property gusto = "frutilla"
    var property gluten = false

    method recibeUnMordisco(){
        peso = (peso * 0.8) - 1
    }
}

object alfajor {
    var property precio =  12
    var property peso = 300
    var property gusto = "chocolate"
    var property tieneGluten = true 

    method recibeUnMordisco(){
        peso = peso * 0.8
    }    
}

object caramelo {
    var property precio =  1
    var property peso = 5
    var property gusto = "frutilla"
    var property tieneGluten = false

    method recibeUnMordisco(){
        peso -= 1
    }  
}

object chupetin {
    var property precio =  2
    var property peso = 7
    var property gusto = "naranja"
    var property tieneGluten = false  

    method recibeUnMordisco(){
        if (peso > 2){
            peso = (peso * 0.9)
        }
    }
}

object oblea {
    var property precio =  5
    var property peso = 250
    var property gusto = "vainilla"
    var property tieneGluten = true

    method recibeUnMordisco(){
        if(peso > 70){
            peso = peso * 0.5
        }else{
            peso = peso * 0.75
        }
    } 
}

object chocolatin {
    var property precio =  pesoInicial / 2
    var property peso = 0
    var property pesoInicial = 0
    var property gusto = "chocolate"
    var property tieneGluten = true
    

    method pesoInit(valor){
        peso = valor
        pesoInicial = valor
    }

    method recibeUnMordisco(){
        peso -= 2
    } 

}

object golosinaBan {
    method precio() =  golosinaBanada.precio() + 2
    method peso() =  golosinaBanada.peso() + pesoBanado
    var property pesoBanado = 4
    method gusto() = golosinaBanada.gusto()
    method tieneGluten() = golosinaBanada.tieneGluten()
    var property golosinaBanada = null

    method golosinaElegida(golosina){
        golosinaBanada = golosina
    } 

    method recibeUnMordisco(){
        golosinaBanada.recibeUnMordisco()
        if(pesoBanado > 0){
            golosinaBanada.peso() - 2
            pesoBanado -= 2
        } 

    }
}

object pastilla {
    var property precio =  0
    var property peso = 5
    var property gusto = chocolate 
    var property tieneGluten = null

    method precioGluten(){
        if(tieneGluten == 0){
            precio = 10
        }else if(tieneGluten == 1) {
            precio = 7
        }
    }

    method recibeUnMordisco() = gusto.siguiente()

}
object frutilla {
    method siguiente() = chocolate
}

object chocolate {
    method siguiente() = naranja
}

object naranja {
    method siguiente() = frutilla
}

object mariano{
var property bolsaCompradas = []

    method comprar(unaGolosina){
        bolsaCompradas.add(unaGolosina)
    }

    method desechar(unaGolosina) {
        bolsaCompradas.remove(unaGolosina)
    }

    method probarGolosinas(){
        bolsaCompradas.forEach({bolsaCompradas => bolsaCompradas.recibeUnMordisco()})
    } //el for each recorre toda la lista y le aplica lo que esta a la derecha de la flecha

    method hayGolosinasSinTACC() {
      bolsaCompradas.any({bolsaCompradas =>bolsaCompradas.tieneGluten()})
    }


}