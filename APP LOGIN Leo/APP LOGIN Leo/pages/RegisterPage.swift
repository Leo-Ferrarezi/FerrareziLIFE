import SwiftUI

struct RegisterPage: View {
    
    //Variaveis
    //state pq é uma variavel q varia, private : quer dizer q essa variavel so existe nesse scopo
    
    // O q vem dps do VAR é o nome da varivael, e o tipo dela.
    
    @State private var email:String = "";
    @State private var confirmeemail:String = "";
    @State private var password:String = "";
    @State private var confirmepassword:String = "";
    
    
    
    
    
    
    
    var body: some View {
        
        
        
        
        
        ZStack {
            
            Color("Default").ignoresSafeArea()
            
            
            VStack{
                Image("leofoto")
                    .frame(width:6,height:30)
                
                
                
                
                
                    .padding(30)
                
                
                
                
                VStack{
                    
                    
                    
                    Text("Criar sua conta")
                        .foregroundColor(.black)
                        .bold()
                        .font(.system(size: 56))
                    
                    
                    
                    
                    
                    VStack{
                        
                        
                        
                        
                        
                        VStack{
                            TextField ("Insira seu email",text: $email) // o cifrao é usado para o codigo entender q pode mudar essa variavel
                                .frame(width: 300,height:25) //frame serve para controla um espaço
                            
                            Rectangle()
                                .frame(width: 300,height:1) //frame serve para controla um espaço
                                .padding()
                            TextField ("Confirme seu email",text: $confirmeemail) // o cifrao é usado para o codigo entender q pode mudar essa variavel
                                .frame(width: 300,height:25) //frame serve para controla um espaço
                            
                            Rectangle()
                                .frame(width: 300,height:1) //frame serve para controla um espaço
                                .padding()
                        }
                        
                        .padding()
                        
                        
                        VStack{
                            SecureField("Insira sua Senha", text: $password) // falo pro codigo abrir um campo de segurança, c o nome senha, e colocar paswword, nome da minnha variavel
                                .frame(width: 300,height:25) //frame serve para controla um espaço
                                
                            
                            
                            Rectangle()
                                .frame(width: 300,height:1) //frame serve para controla um espaço
                            
                            SecureField("Confirme sua Senha", text: $confirmepassword) // falo pro codigo abrir um campo de segurança, c o nome senha, e colocar paswword, nome da minnha variavel
                                .frame(width: 300,height:25) //frame serve para controla um espaço
                                
                            
                            
                            Rectangle()
                                .frame(width: 300,height:1) //frame serve para controla um espaço
                            
                            
                            
                            
                                .padding()
                            
                            Spacer ()
                                .frame(width: 1, height: 10)
                        }
                        Button (action:{}) {
                            
                            Text ("Finalizar Cadastro")
                                .font(.callout)
                                .foregroundColor(.white)
                                .frame(width:200, height: 28)
                                .background(Color.black.opacity(0.4))
                                .cornerRadius(30)
                            // aqui criamos um button, e dentro do botão temos o entrar- em seguidas suas propriedades.
                        }
                        
                     
                        
                        
                    }
                    
                    
                    
                    
                }
                
            }
        }
        
    }
}
    



