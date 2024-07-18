//
//  ContentView.swift
//  RentCar
//
//  Created by tandyys on 17/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.gray.opacity(0.2))
                .frame(height: 450)
            
            VStack(spacing: 0) {
                Image("tesla2")
                    .resizable()
                    .frame(width: 350, height: 200)
                Image("teslalogo")
                    .resizable()
                    .frame(width: 350, height: 150)
                    .offset(y: -80)
            }
            .offset(y: -200)
            
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Text("TESLA MODEL S")
                        .font(.system(size: 28))
                        .bold()
                    Spacer()
                    Button(action: {
                        print("Tapped")
                    }, label: {
                        Image(systemName: "info.circle")
                            .font(.system(size: 28))
                            .foregroundColor(.black)
                    })
                }
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("$80/hr")
                        .font(.system(size: 20))
                        .foregroundStyle(.gray.opacity(0.8))
                    HStack {
                        ForEach(0..<5) { _ in
                                Image(systemName: "star.fill")
                                .font(.system(size: 15))
                        }
                    }
                }
                .padding([.bottom], 10)
                
                HStack {
                    column1
                    
                    Spacer()
                    
                    column2
                    
                    Spacer()
                    
                    column3
                }
                .padding([.bottom], 10)
                
                interiorInfo
            }
            .padding()
            .offset(y: 40)
        }
        .padding()
    }
    
    var column1: some View {
        VStack(alignment: .leading) {
            Text("Transmission")
                .font(.system(size: 18))
                .bold()
                .foregroundStyle(.gray.opacity(0.8))
            Text("Automatic")
                .font(.system(size: 24))
        }
    }
    
    var column2: some View {
        VStack(alignment: .leading) {
            Text("Class")
                .font(.system(size: 18))
                .bold()
                .foregroundStyle(.gray.opacity(0.8))
            Text("Luxury")
                .font(.system(size: 24))
        }
    }
    
    var column3: some View {
        VStack(alignment: .leading) {
            Text("Year")
                .font(.system(size: 18))
                .bold()
                .foregroundStyle(.gray.opacity(0.8))
            Text("2021")
                .font(.system(size: 24))
        }
    }
    
    var interiorInfo: some View {
        VStack(alignment: .leading) {
            Text("Car Interior")
                .font(.system(size: 24))
                .foregroundStyle(.gray.opacity(0.8))
            HStack {
                Image("interior1")
                    .resizable()
                    .frame(width: 160, height: 120)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                Spacer()
                Image("interior2")
                    .resizable()
                    .frame(width: 160, height: 120)
                    .cornerRadius(10)
                    .shadow(radius: 5)
            }
        }
    }
    
}

#Preview {
    ContentView()
}
