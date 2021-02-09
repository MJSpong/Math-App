//
//  TheoremDetailView.swift
//  Math App
//
//  Created by Matthew Spong on 8/2/21.
//

import SwiftUI

struct TheoremDetailView: View {
    
    var theorem:Theorem!
    
    var body: some View {

         NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    // MARK: Theorem Image
                    Image(theorem.image)
                        .resizable()
                        .scaledToFill()

                    // MARK: Theorem
                    VStack(alignment: .leading) {
                        Text("Theorem")
                            .font(.headline)
                            .padding([.bottom, .top], 5)

                        Text(theorem.statement)
                    }
                }
                .padding(.horizontal)
                    
                // MARK: Divider
                Divider()
                    
                // MARK: Proof
                VStack(alignment: .leading) {
                    Text("Proof")
                        .font(.headline)
                        .padding([.bottom, .top], 5)

                    ForEach(0..<theorem.proof.count, id: \.self) { index in
                        Text(theorem.proof[index])
                            .padding(.bottom, 5)
                    }
                }
                .padding(.horizontal)
            }.navigationBarTitle(theorem.name)
        }
    }
}


struct TheoremDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        // Create a dummy theorem and pass it into the detail view so that we can see a preview
        let model = TheoremModel()
        
        TheoremDetailView(theorem: model.theorems[0])
    }
}
