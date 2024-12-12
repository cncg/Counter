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
        ZStack {
            (isLightModeOn ? Color.white : Color.black)
                .ignoresSafeArea()
            VStack {
                HStack {
                    Spacer()
                    ThemeToggle(action: {isLightModeOn.toggle()}, systemImage: isLightModeOn ? "moon" : "sun.max", isLightModeOn: isLightModeOn)
                }
                Spacer()
                Text("\(count)")
                    .padding()
                    .foregroundStyle(isLightModeOn ? .black : .white)
                Spacer()
                
                HStack {
                    CounterButton(action: {count -= 1}, systemImage: "minus.circle", isLightModeOn: isLightModeOn)
                    Spacer()
                    CounterButton(action: {count += 1}, systemImage: "plus.circle", isLightModeOn: isLightModeOn)
                }
            }
            .font(.largeTitle)
            .background(isLightModeOn ? .white : .black)
        }
    }
}

struct ThemeToggle: View {
    var action: () -> Void
    var systemImage: String
    var isLightModeOn: Bool

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
