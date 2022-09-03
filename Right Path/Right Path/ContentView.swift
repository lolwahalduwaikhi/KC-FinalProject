//
//  ContentView.swift
//  Right Path
//
//  Created by Lulwah alduwaikhi on 27/08/2022.
//

import SwiftUI

struct ContentView: View {
@State var weight = ""
@State var height = ""
@State var result = 0.0
@State var condition = ""

    var body: some View {
    
        ZStack {
            Color.indigo.opacity(0.4)
                .ignoresSafeArea()
            VStack{
               
               Image("scale")
                    .resizable()
                    .frame(width: 350, height: 350)
          
             TextField("weight", text: $weight)
                    .textFieldStyle(.roundedBorder)
                   TextField("height", text: $height)
                    .textFieldStyle(.roundedBorder)
           
                   Button {
                       result = bmiCalc(W: Double(weight) ?? 0.0, H: Double(height) ?? 0.0)
                           
                       if result <= 20 {
                          condition = "ضعيف"
                       }else if result <= 25{
                           condition = "جيد"
                       } else {
                           condition = "سمين"
                       }
                       
                       
                   } label: {
                       Text("احسب")
                           .background(.indigo)
                           .foregroundColor(.white)
                           .cornerRadius(8)
                           .font(.largeTitle)
                          
                   }
           

               Text("BMI = \(result)")
                       .font(.largeTitle)
                   Text("الحالة = \(condition)")
                       .font(.largeTitle)
            }
        }
    
       }
      
       func bmiCalc(W: Double, H: Double) -> Double{
          return W / (H*H)
            
           
       }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
