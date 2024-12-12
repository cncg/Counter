//
//  CounterView.swift
//  Counter
//
//  Created by Chelsea Calvo on 12/12/24.
//

import SwiftUI

struct CounterView: View {
    @State private var count : Int = 0
    @State private var isLightModeOn : Bool = true
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        VStack {
            HStack {
                //ThemeToggle
            }
            Text("\(count)")
                .padding()
            HStack {
                //CounterButton
            }
        }
    }
}

struct ThemeToggle: View {
    var action: () -> Void
    var systemImage: String
    var isLightModeOn: Bool
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        Button(action: action){
            Image(systemName: systemImage)
        }
        .padding()
        .foregroundStyle(isLightModeOn ? .black : .white)
    }
}

struct CounterButton: View {
    var action: () -> Void
    var systemImage: String
    var isLightModeOn: Bool
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        Button(action: action){
            Image(systemName: systemImage)
        }
        .padding()
        .foregroundStyle(isLightModeOn ? .black : .white)
    }
}


#Preview {
    CounterView()
}
