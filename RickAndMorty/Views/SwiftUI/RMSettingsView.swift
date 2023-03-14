//
//  RMSettingsView.swift
//  RickAndMorty
//
//  Created by Đình Việt on 06/02/2023.
//

import SwiftUI

struct RMSettingsView: View {
    
    let viewModel: RMSettingsViewViewModel
    
    init(viewModel: RMSettingsViewViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            List(viewModel.cellViewModels) { viewModel in
                HStack {
                    if let image = viewModel.image {
                        Image(uiImage: image)
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(Color.white)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color.red)
                            .padding(8)
                            .background(Color(viewModel.iconContainerColor))
                            .cornerRadius(6)
                    }
                    Text(viewModel.title)
                        .padding(.leading, 10)
                    Spacer()
                }
                .padding(.bottom, 3)
                .onTapGesture {
                    viewModel.onTapHandler(viewModel.type)
                }
            }
            VStack {
                Image("Richard")
                    .resizable()
                    .frame(width: 48, height: 48)
                    .padding(12)
//                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(8)
                Text("Rick And Morty")
                    .backgroundStyle(.red)
                    .font(.custom("", fixedSize: 12))
                    .foregroundColor(.gray)
                    .fontWeight(.bold)
            }
            Spacer()
        }
        Spacer()
    }
}

struct RMSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        RMSettingsView(viewModel: .init(cellViewModels: RMSettingsOption.allCases.compactMap({
            return RMSettingsCellViewModel(type: $0) { option in
            }
        })))
    }
}
