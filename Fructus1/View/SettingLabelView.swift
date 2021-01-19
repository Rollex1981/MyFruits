//
//  SettingLabelView.swift
//  Fructus1
//
//  Created by admin on 15.01.2021.
//
import SwiftUI

struct SettingLabelView: View {
    // MARK: PROPERTIES
    
    var lableText: String
    var labelImage: String
    
    // MARK: BODY
    
    var body: some View {
        HStack {
            Text(lableText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
      }
    }
  }

struct SettingLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingLabelView(lableText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
