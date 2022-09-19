//
//  ContentView.swift
//  CW6B
//
//  Created by Hessa AlMusafer on 19/09/2022.
//

import SwiftUI

struct SecondView: View {
    let msg: String
    let choice: Color

    var body: some View {
        ZStack{
            choice.ignoresSafeArea()
        Text(msg)
        }
    }
}

struct ContentView: View {
    @State var choice = Color.white
    let colors = [Color.red , Color.blue , Color.green , Color.yellow]
    @State var msg = ""
    var body: some View {
        NavigationView
        {
            VStack {
                Text("Choose your favorite color")
                    .bold()
                    .padding()
                
                HStack
                {
                    ForEach(colors, id: \.self)
                    {color in
                        Image(systemName: "circle.fill")
                            .foregroundColor(color)
                            .font(.system(size: 60))
                        
                            .onTapGesture
                        {
                            choice = color
                        }
                        
                    }
                }
                .padding()

                Text("What do you want to write")
                    .bold()

                TextField("write here" , text: $msg)
                    .padding()
                    .border(.gray, width: 2)
                
                NavigationLink(destination: SecondView(msg: msg, choice: choice))
                {
                    ZStack
                    {
                        
                        Image(systemName: "rectangle.fill")
                            .resizable()
                            .frame(width: 60, height: 30)
                            .foregroundColor(.mint)
                        Text("Save")
                            .foregroundColor(.white)
                    }
                }
            }
            .navigationTitle("Diary")
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
