//
//  ContentView.swift
//  CW6A
//
//  Created by Hessa AlMusafer on 19/09/2022.
//

import SwiftUI

struct student: Identifiable
{
    let id = UUID()
    var name: String
    var year: Int
    var age: Int
}


struct ContentView: View {
    
    var students = [student(name: "Sarah Fahad", year: 2, age: 20) , student(name: "Nourah Mohammad", year: 4, age: 22) , student(name: "Rashid Ali", year: 1, age: 18)]
    
    var body: some View {
        VStack
        {
            Image("id")
                .resizable()
                .scaledToFit()
                .padding()
            
            Text("Student Records")
                .font(.largeTitle)
                .bold()
            Divider()
            
            ForEach(students)
            {
                student in
                
                VStack
                {
                    HStack
                    {
                        Text("name:")
                            .bold()
                        Text(student.name)
                    }
                    HStack
                    {
                        Text("year:")
                            .bold()
                        Text(String(student.year))
                    }
                    HStack
                    {
                        Text("age:")
                            .bold()
                        Text(String(student.age))
                    }
                    
                }
                Divider()
              
            }
            
            Spacer()
            HStack
            {
            Image(systemName: "info.circle.fill")
                .foregroundColor(.blue)
                
                Text("No. of Registered Students:")
                    .bold()
                Text(String(students.count))
                    .bold()
            }
            .padding()
            .border(.gray, width: 2)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
