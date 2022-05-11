//
//  ContentView.swift
//  WebServiceSwiftUI
//
//  Created by Mark Joselli on 11/05/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ViewModel()
    var body: some View {
        Text(viewModel.chuckModel.value)
            .padding()
        Button {
            viewModel.getChuckMessage()
        } label: {
            Label("Refresh", systemImage: "refresh")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
