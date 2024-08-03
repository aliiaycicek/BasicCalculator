//
//  ContentView.swift
//  BasicCalculator
//
//  Created by Ali Ayçiçek on 30.07.2024.
//

    import SwiftUI
    struct ContentView: View {
        @State private var number1: String = ""
        @State private var number2: String = ""
        @State private var result: String = ""
        
        var body: some View {
          
            VStack {
                HStack(spacing: 0) {
                    Text("C")
                        .font(.system(size: 28, weight: .bold, design: .serif))
                        .foregroundColor(.blue)
                    Text("Calculator")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.yellow)
                }
                
                .padding()
                
            
                TextField("Number-1", text: $number1)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .keyboardType(.decimalPad)
                    .foregroundColor(.black)
                    
                
                TextField("Number-2", text: $number2)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .keyboardType(.decimalPad)
                    
                VStack {
                    HStack {
                        Button(action: {
                            if let num1 = Double(number1), let num2 = Double(number2) {
                                self.result = String(num1+num2)
                            }
                        }) {
                            Text("+")
                                .font(.largeTitle)
                        }
                        .padding()
                        
                        Button(action: {
                            if let num1 = Double(number1), let num2 = Double(number2) {
                                self.result = String(num1-num2)
                            }
                        }) {
                            Text("-")
                                .font(.largeTitle)
                        }
                        .padding()
                    }
                    
                    HStack {
                        Button(action: {
                            if let num1 = Double(number1), let num2 = Double(number2) {
                                self.result = String(num1*num2)
                            }
                        }) {
                            Text("×")
                                .font(.largeTitle)
                        }
                        .padding()
                        
                        Button(action: {
                            if let num1 = Double(number1), let num2 = Double(number2) {
                                if num2 != 0 {
                                    self.result = String(num1/num2)
                                } else {
                                    self.result = "Error"
                                }
                            }
                        }) {
                            Text("÷")
                                .font(.largeTitle)
                        }
                
                        .padding()
                    }
                }
             
               
                Text("RESULT")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                    .padding()
                
                Text(result)
                    .font(.title)
                    .padding()
            }
            .containerRelativeFrame([.horizontal, .vertical])
            .background(Gradient(colors: [.teal, .cyan, .green]).opacity(0.74))
            .padding()
        }
        
    }

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }



