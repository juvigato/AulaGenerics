import Foundation

var intA = 1
var intB = 2
let maiorInt = maior(intA, intB)

var doubleA = Double.pi
var doubleB = 3.14
let maiorDouble =  maior(doubleA, doubleB)

var tratorA = AgriculturalMachinery(size: 12)
var tratorB = AgriculturalMachinery(size: 783)
let maiorTrator = maior(tratorA, tratorB)

var pilha = Pilha<Int>()

pilha.push(intA)
pilha.push(intB)


//TODO: Fazer um método que recebe um Array e um elemento, retorna um Bool dizendo se o elemento se encontra no Array

var arrayA:[Int] = [1,2,3,4,5]

var comparacao = todoOne(array: arrayA, element: 3)

func todoOne<T: Comparable> (array: [T], element: T) -> Bool {
    for x in array {
        if x == element {
            return true
        }
    }
    return false
}

//TODO: Extensão de Array contendo uma função que retorna a soma de todos os elementos, independente de qual o valor numérico

arrayA.sum()

extension Array where Element: Numeric {
    func sum() -> Element {
        var sum = Element.zero
        
        for element in self {
            sum += element
        }
        return sum
    }
}


//TODO: Fazer um método que recebe 2 Arrays e retorna um Int referente a quantidade de elementos presentes em ambos os Arrays
    //BONUS TODO: Fazer o método acima receber N arrays

var arrayB = [0,1,2,3,4]
let inter = elementIntersect(arrayOne: arrayA, arrayTwo: arrayB)

func elementIntersect<T:Comparable>(arrayOne: [T], arrayTwo: [T]) -> Int {
    var count:Int = 0
    
    for i in arrayOne {
        if arrayTwo.contains(i) {
            count += 1
        }
    }
    
    return count
}
