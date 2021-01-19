//
//  SettingRowView.swift
//  Fructus1
//
//  Created by admin on 17.01.2021.

import SwiftUI

struct SettingRowView: View {
    // MARK: - PROPERTIES
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            
            HStack {
                Text("Developer").foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }
                else {
                    EmptyView()
       }
            }
        }
 }
}

struct SettingRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
        SettingRowView(name: "Developer", content: "Roman / Victorovich")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
            SettingRowView(name: "Website", linkLabel: "SwiftUI Masterclass",
                           linkDestination: "swiftuimasterclass.com")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
    }
  }
}
