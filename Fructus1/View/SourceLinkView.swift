//
//  SourceLinkView.swift
//  Fructus1
//
//  Created by admin on 15.01.2021.
//
import SwiftUI

struct SourceLinkView: View {
    // MARK: PROPERTIES
    
    // MARK: BODY
    
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content source ")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
