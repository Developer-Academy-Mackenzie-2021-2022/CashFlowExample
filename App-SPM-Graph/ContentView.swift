//
//  ContentView.swift
//  App-SPM-Graph
//
//  Created by Francielly Cristina Ortiz Candido on 04/11/21.
//

import SwiftUI
import FrameworkDeGraficos

struct ContentView: View {
    var body: some View {
        ScrollView {
            ZStack (alignment: .top) {
                Color(.white).opacity(0.2).edgesIgnoringSafeArea(.all)
                VStack (spacing: 20){
                    VStack {
                        Text("Fluxo de Caixa")
                                .font(.largeTitle)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                            .edgesIgnoringSafeArea(.leading)
                        .padding()
                        .frame(width:370, height: 40, alignment: .leading)
                        .lineLimit(nil)
                        Spacer()
                    }.fixedSize()
                    VStack {
                        Text("Fluxo de Caixa anual do Ministério do Meio Ambiente")
                            .font(.title)
                            .multilineTextAlignment(.leading)
                    }
                        Spacer()
                    VStack{
                        CashFlowView(data: [25.0, 30, 45], years: ["2020", "2021", "2022"])
                    }
                }
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
