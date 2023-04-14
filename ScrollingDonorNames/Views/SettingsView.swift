//
//  SettingsView.swift
//  ScrollingDonorNames
//
//  Created by Rafael Schmitt on 14/04/23.
//

import SwiftUI

struct SettingsView: View {
    
    private var copyPixKeyButtonHorizontalPadding: CGFloat {
        UIScreen.main.bounds.width > 400 ? 20 : 10
    }
    
    var body: some View {
        ZStack {
            Form {
                Section {
                    HelpTheAppView()
                        .padding(.vertical)
                    
                    HStack {
                        Spacer()
                        
                        Button {
                            print("Button tapped")
                        } label: {
                            HStack(spacing: 15) {
                                Image(systemName: "doc.on.doc")
                                    .renderingMode(.template)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20)
                                
                                Text("Copiar chave Pix (e-mail)")
                                    .bold()
                                    .foregroundColor(.green)
                            }
                            .padding(.horizontal, copyPixKeyButtonHorizontalPadding)
                            .padding(.vertical, 8)
                        }
                        .tint(.green)
                        .controlSize(.regular)
                        .buttonStyle(.bordered)
                        .buttonBorderShape(.roundedRectangle)
                        
                        Spacer()
                    }
                    .padding(.vertical, 10)
                } header: {
                    Text("Ajude o app")
                } footer: {
                    Text("Selecione E-mail como tipo de chave no app do seu banco. Evite qualquer opção que mencione QR Code.")
                }
            }
            .navigationTitle("Configurações")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    
    static var previews: some View {
        SettingsView()
    }
}
