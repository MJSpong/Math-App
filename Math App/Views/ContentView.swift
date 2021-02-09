//
//  ContentView.swift
//  Math App
//
//  Created by Matthew Spong on 8/2/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = TheoremModel()
    
    var body: some View {
            
        NavigationView {
            ForEach(model.theorems) { r in

                NavigationLink(
                    destination: TheoremDetailView(theorem:r),
                    label: {
                        ZStack {
                            Image(r.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 500, height: 500, alignment: .center)
                                .clipped()
                                .cornerRadius(5)
                            VStack {
                                Text(r.name)
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .padding()
                                Text(r.author)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                            }
                        }
                    })
            }
            .navigationBarTitle("All Theorems")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
