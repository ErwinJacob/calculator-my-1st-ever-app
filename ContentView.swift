
import SwiftUI

func updateScore(_ a:Double, _ b:Double, _ action:Double) -> Double {
    if action == 1 {
        return a + b
    }
    else if action == 2 {
        return a - b
    }
    else if action == 3 {
        return a*b
    }
    else if action == 4{
        return a/b
    }
    
    return 0
}

func update(liczba: Double, a: inout Double, b: inout Double, action: Double, score: Double){
    
    if score == 0 {
        if action == 0 {
            a = (a*10) + liczba
        }
        else if action != 0{
            b = (b*10) + liczba
        }
    }
    else if score != 0{
        b = b*10 + liczba
    }
}
    

struct ContentView: View {
    
    @State var wynik: Double = 0
    @State var a: Double = 0
    @State var b: Double = 0
    @State var action: Double = 0


    var body: some View {
        VStack{
            Spacer()
            
            VStack{
                HStack{
                    Spacer()
                    Text("\(String(a))").bold()
                    if action == 1 {Text(" + ").bold()}
                    if action == 2 {Text(" - ").bold()}
                    if action == 3 {Text(" * ").bold()}
                    if action == 4 {Text(" / ").bold()}
                    if action != 0{
                    Text("\(String(b))").bold()
                    }
                    Spacer()
                }
            }
            Spacer()
            
            Text("Wynik:")
                .font(.title)
                .bold()
            Text(String(wynik))
                .font(.title)
                .bold()
                .padding(.bottom, 30)
        
                
            VStack{
            
            // 1 - 3
            HStack{
                Spacer()
                
                Button(action: {
                    update(liczba: 1, a: &a, b: &b, action: action, score: wynik)
                }
                       , label: {                    Text("1.")
                        .bold()
                        .padding(30)
                        .background(Color.gray)
                        .clipShape(Circle())
                })
                
                Spacer()

                Button(action: {
                    update(liczba: 2, a: &a, b: &b, action: action, score: wynik)
                }
                , label: {
                    Text("2.")
                        .bold()
                        .padding(30)
                        .background(Color.gray)
                        .clipShape(Circle())                })

                Spacer()

                Button(action: {
                    update(liczba: 3, a: &a, b: &b, action: action, score: wynik)
                }
                , label: {
                    Text("3.")
                        .bold()
                        .padding(30)
                        .background(Color.gray)
                        .clipShape(Circle())                })

                Spacer()

            }
//            .padding(30)
            
            // 4 - 6
            
            HStack{
                Spacer()
                
                Button(action: {
                    update(liczba: 4, a: &a, b: &b, action: action, score: wynik)
                }
                , label: {
                    Text("4.")
                        .bold()
                        .padding(30)
                        .background(Color.gray)
                        .clipShape(Circle())                })
                
                Spacer()

                Button(action: {
                    update(liczba: 5, a: &a, b: &b, action: action, score: wynik)
                }
                , label: {
                    Text("5.")
                        .bold()
                        .padding(30)
                        .background(Color.gray)
                        .clipShape(Circle())                })

                Spacer()

                Button(action: {
                    update(liczba: 6, a: &a, b: &b, action: action, score: wynik)
                }
                , label: {
                    Text("6.")
                        .bold()
                        .padding(30)
                        .background(Color.gray)
                        .clipShape(Circle())                })

                Spacer()

            }
//            .padding(30)
            
            // 7 - 9
            
            HStack{
                Spacer()
                
                Button(action: {
                    update(liczba: 7, a: &a, b: &b, action: action, score: wynik)
                }
                , label: {
                    Text("7.")
                        .bold()
                        .padding(30)
                        .background(Color.gray)
                        .clipShape(Circle())                })
                
                Spacer()

                Button(action: {
                    update(liczba: 8, a: &a, b: &b, action: action, score: wynik)
                }
                , label: {
                    Text("8.")
                        .bold()
                        .padding(30)
                        .background(Color.gray)
                        .clipShape(Circle())                })

                Spacer()

                Button(action: {
                    update(liczba: 9, a: &a, b: &b, action: action, score: wynik)
                }
                , label: {
                    Text("9.")
                        .bold()
                        .padding(30)
                        .background(Color.gray)
                        .clipShape(Circle())                })

                Spacer()

            }
//            .padding(30)
            
            Button(action: {
                update(liczba: 0, a: &a, b: &b, action: action, score: wynik)
            }, label: {
                Text("0.")
                    .bold()
                    .padding(30)
                    .background(Color.gray)
                    .clipShape(Circle())
            })
            }
            
            //dzialania:
            
            HStack{
                Spacer()
                
                Button(action: {
                    action = 1
                }
                , label: {
                    Text("+")
                        .bold()
                        .padding(30)
                        .background(Color.gray)
                        .clipShape(Circle())                })
                
                Spacer()

                Button(action: {
                    action = 2
                }
                , label: {
                    Text("-")
                        .bold()
                        .padding(30)
                        .background(Color.gray)
                        .clipShape(Circle())                })

                Spacer()

                Button(action: {
                    action = 3
                }
                , label: {
                    Text("*")
                        .bold()
                        .padding(30)
                        .background(Color.gray)
                        .clipShape(Circle())                })

                Spacer()
                
                Button(action: {
                    action = 4
                }
                , label: {
                    Text("/")
                        .bold()
                        .padding(30)
                        .background(Color.gray)
                        .clipShape(Circle())                })

                Spacer()

            }
            .padding(30)
            
            HStack{

                
                Spacer()

                Button(action: {
                    wynik = updateScore(a, b, action)
                    a = wynik
                    b = 0
                    action = 0
                }
                , label: {
                    Text("Licz")
                        .bold()
                        .padding()
                        .background(Color.gray)
                })

                Spacer()

                Button(action: {a = 0; b = 0; action = 0; wynik = 0}, label: {
                    Text("Reset")
                        .bold()
                        .padding()
                        .background(Color.gray)
                })

                Spacer()

            }
            .padding(30)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
