//
//  ContentView.swift
//  HW3
//
//  Created by Sedra Asrawi on 26/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var theopacity : Double = 0.9

    
    var body: some View {
        
        
        ZStack {
            Color.green.opacity(theopacity)
                .ignoresSafeArea()
            VStack {
                ScrollView {
                    
                        
                        ForEach (srotes) {
                            store in
                            
                            theView(thestore: store)
                            Divider()
                        }
                    
                    

                    
                }.padding()
                .frame(width: 340, height: 600)
                    .background(.white)
                .cornerRadius(20)
                
                Slider(value: $theopacity, in: 0...1)
                    .accentColor(.black)
                    .padding()

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




struct theView: View {
    
    @State var thestore : Expenses

    
    var body: some View {
        
        ZStack {
            
            
            
            VStack {
                HStack{
                    
                    Image(thestore.profileImage)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 70, height: 70)

                        .clipShape(Rectangle())
                    
                    Spacer()
                    
                    VStack{
                        
                        HStack {
                            Spacer()

                            Text(thestore.store)
                                .font(.system(size: 15))
                                .fontWeight(.bold)
                            Text("المحل :")
                                .font(.system(size: 15))
                                .fontWeight(.bold)
                        }.padding(2)
                            
                        
                     HStack {
                         Spacer()

                         Text(thestore.paid)
                             .font(.system(size: 15))
                             .fontWeight(.bold)
                        Text("المبلغ :")
                             .font(.system(size: 15))
                             .fontWeight(.bold)
                    }.padding(2)
                        
                        VStack {
                            
                            HStack {
                                Spacer()

                                Text("المصروفات :")
                                    .font(.system(size: 15))
                                    .fontWeight(.bold)
                            }
                            
                            ForEach(thestore.purchases, id: \.self){
                                bought in
                                
                                VStack{
                                    HStack {
                                        Spacer()

                                        Text(bought)
                                            .font(.system(size: 15))
                                        .fontWeight(.bold)
                                    }
                                }.padding(2)
                                    
                            }
                            
                            
                            
                            
                            
                        }.padding(2)
                        
                    }.frame(width: 200, alignment: .trailing)
                    
                }.padding()
                
                Spacer()
                
                
            }
            
        }
        
    }
}
