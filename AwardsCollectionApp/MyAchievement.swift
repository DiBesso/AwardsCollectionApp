//
//  MyAchievement.swift
//  AwardsCollectionApp
//
//  Created by Дмитрий Бессонов on 06.03.2022.
//

import SwiftUI

struct MyAchievement: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
            let size = min(width, height)
            
            ZStack {
                
                Rectangle()
                    .cornerRadius(size / 5)
                    .foregroundColor(Color(red: 0.2, green: 0, blue: 0.4))
                    .frame(
                        width: width,
                        height: height
                    )
                
                
                Image(systemName: "globe.asia.australia.fill")
                    .resizable()
                    .scaleEffect(0.5)
                    .offset(x: 0, y: 40)
                    .foregroundColor(.blue)
                
                Image(systemName: "tortoise.fill")
                    .resizable()
                    .scaleEffect(0.4)
                    .offset(x: 5, y: -30)
                    .foregroundColor(.green)
                
                Text("За самый быстрый интернет!")
                    .foregroundColor(.orange)
                    .bold()
                    .offset(x: 0, y: size / 1.5)
                    .lineLimit(2)
                    .font(.title3)
                    .frame(width: width)
            }
        }
    }
}

struct MyAchievement_Previews: PreviewProvider {
    static var previews: some View {
        MyAchievement()
            .frame(width: 250, height: 250)
    }
}
