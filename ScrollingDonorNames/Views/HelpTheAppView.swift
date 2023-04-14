//
//  HelpTheAppView.swift
//  ScrollingDonorNames
//
//  Created by Rafael Schmitt on 14/04/23.
//

import SwiftUI

struct HelpTheAppView: View {
    
    var body: some View {
        VStack(alignment: .center, spacing: 18) {
            HStack(spacing: 20) {
                Image("creator")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 80)
                
                Text("Rafael aqui, criador do app Medo e Delírio para iPhone, iPad e Mac.")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, UIDevice.current.userInterfaceIdiom == .phone ? 0 : 15)
            }
            
            VStack(alignment: .leading, spacing: 18) {
                Text("Esse trabalho é voluntário e envolve custos mensais com servidor (~R$ 30). Toda contribuição é bem-vinda!")
                    .fixedSize(horizontal: false, vertical: true)
                
                Text("**Últimas contribuições:**")
                
                ScrollingTagView()
                    .padding(.bottom, 10)
            }
        }
    }
}

struct HelpTheAppView_Previews: PreviewProvider {
    
    static var previews: some View {
        HelpTheAppView()
    }
}
