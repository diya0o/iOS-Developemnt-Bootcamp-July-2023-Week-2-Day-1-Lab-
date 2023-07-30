//
//  ContentView.swift
//  Day 2 lap 1
//
//  Created by Diya Alowdah on 30/07/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var change = "image"
    @State var changeImage:Array<String> = ["1","2","3"]

    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
            VStack {
                Image(change)
                    .resizable()
                    .cornerRadius(30)
                    .frame(width: 300,height: 300)
                    
                    .foregroundColor(.accentColor)
                
                
                
                HStack {
                    
                    Text("hear>>")
                    
                        .font(.system(size: 35))
                        .padding()
                        .lineLimit(1)
                        .foregroundColor(.white)
                        .background(.bar.opacity(0.4))
                        .cornerRadius(25)
                        .padding()

                    Button(action: {
                        changColor()
                    }, label: {Text("Change Image"
                    )
                            .font(.system(size: 30))
                            .multilineTextAlignment(.center)
//                            .lineLimit(0)
                            .padding()
                            
                            .foregroundColor(.white)
                            .background(.pink.opacity(0.4))
                            .cornerRadius(25)
                            .padding()

                })
                    
                   
                }
                
            }
            .padding()
        }
    }
    
    func changColor (){

        let rundom = Int.random(in: 0..<changeImage.count)
        change = changeImage[rundom]


    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
