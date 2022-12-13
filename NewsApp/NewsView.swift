//
//  NewsView.swift
//  NewsApp
//
//  Created by Amby on 17/08/2022.
//

import SwiftUI

struct Badge: View {
    let text: String
    let imageName: String

    var body: some View {
        HStack {
            Image(systemName: imageName)
            Text(text)
        }
    }
}

struct Position: View {
    let position: Int
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 32, height: 32)
                .foregroundColor(.teal)
            Text("\(position)")
                .font(.callout)
                .bold()
                .foregroundColor(.white)
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Position(position: 1)
            Badge(text: "12.4", imageName: "paperplane")
        }
        .previewLayout(.sizeThatFits)
    }
}
