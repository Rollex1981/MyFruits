//
//  SettingsView.swift
//  Fructus1
//
//  Created by admin on 15.01.2021.
//
import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: SECTION 1
                    
                    GroupBox(
                        label:
                            SettingLabelView(lableText: "Fructus", labelImage: "info.circle")
                             ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10) {
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium, calories.None have cholesterol.Fruits are sources of many essential nutrients, including potassium, dietary fibre, vitamins, and much more.")
                                .font(.footnote)
                            }
                          }
                    
                    
                    // MARK: SECTION 2
                    
                    GroupBox(
                        label: SettingLabelView(lableText: "Customization", labelImage: "paintbrunsh")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box.That way it starts the onboarding process and you will see the welcom screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                      
                        
                        
                    }
                }
                    // MARK: SECTION 3
                    
                    GroupBox(
                        label: SettingLabelView(lableText: "Application", labelImage: "apps.iphone")
                    ) {
            SettingRowView(name: "Developer", content: "Roman / Victorovich")
            SettingRowView(name: "Desinger", content: "Victorya / Romanovna")
            SettingRowView(name: "Compatibilyti", content: "iOS 14")
            SettingRowView(name: "Website", linkLabel: "SwiftUI Masterclass",
                                       linkDestination: "swiftuimasterclass.com")
            SettingRowView(name: "telegram", linkLabel: "@Romzes1981",
                                       linkDestination: "telegram.com")
            SettingRowView(name: "SwiftUI", content: "2.0")
            SettingRowView(name: "Version", content: "1.1.0")
                      }
                    } //: BOX
                
                 }    //: VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                  }
                )
            
                .padding()
          }        //: SCROLL
        }          //: NAVIGATION


// MARK: - PREVIEW

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11 Pro")
    }
  }


