
import SwiftUI

struct loginPage: View {
    
    //Variaveis
    //state pq é uma variavel q varia, private : quer dizer q essa variavel so existe nesse scopo
    
    // O q vem dps do VAR é o nome da varivael, e o tipo dela.
    
    @State private var username:String = "";
    @State private var password:String = "";
    
    
    
    
    
    
    
    var body: some View {
        
        
        
        
        
        ZStack {
            
            Color("Default").ignoresSafeArea()
            
            
            VStack{
                Image("leofoto")
                    .frame(width:6,height:30)
                
                
                
                
                
                    .padding(30)
                
                
                
                
                VStack{
                    
                    
                    
                    Text("Login Seguro")
                        .foregroundColor(.black)
                        .bold()
                        .font(.system(size: 56))
                    
                    
                    
                    
                    
                    VStack{
                        
                        
                        
                        
                        
                        VStack{
                            TextField ("Nome de Usuário",text: $username) // o cifrao é usado para o codigo entender q pode mudar essa variavel
                                .frame(width: 300,height:25) //frame serve para controla um espaço
                            
                            Rectangle()
                                .frame(width: 300,height:1) //frame serve para controla um espaço
                                .padding()
                        }
                        
                        .padding()
                        
                        
                        VStack{
                            SecureField("Senha", text: $password) // falo pro codigo abrir um campo de segurança, c o nome senha, e colocar paswword, nome da minnha variavel
                                .frame(width: 300,height:25) //frame serve para controla um espaço
                                
                            
                            
                            Rectangle()
                                .frame(width: 300,height:1) //frame serve para controla um espaço
                            
                            
                            
                                .padding()
                            
                            Spacer ()
                                .frame(width: 1, height: 10)
                        }
                        Button (action:{}) {
                            
                            Text ("Entrar")
                                .font(.callout)
                                .foregroundColor(.white)
                                .frame(width:200, height: 28)
                                .background(Color.black.opacity(0.4))
                                .cornerRadius(30)
                            // aqui criamos um button, e dentro do botão temos o entrar- em seguidas suas propriedades.
                        }
                        
                        NavigationLink (destination : RegisterPage()){
                            
                            Text("Não tem uma conta?")
                                .font(.callout)
                                .foregroundColor(.black)
                            // Navigation link - informa q vai ter um link q destina para o registerPAGE
                            //e dps abre com o texto q vai ter,e cor
                            
                            
                            
                        }
                        
                        
                        
                        
                        
                        
                    }
                    
                    
                    
                    
                }
                
            }
        }
        
    }
}
    


