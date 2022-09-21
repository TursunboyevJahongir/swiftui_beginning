//
//  CourseCard.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jahongir on 21/09/22.
//

import SwiftUI

struct CourseCard: View {
    var image: String = "xmark"
    var title: String = "Title"
    var hours: String = "23 sections - 4 hours"
    var colors: Array<Color> = [Color.red,Color.blue,Color.black]
    var logo: String = "wave.3.backward.circle.fill"

    var body: some View {
            ZStack(alignment: .topTrailing) {
           VStack(spacing: 6) {
              Image(image)
                  .resizable()
                  .frame(width: 128, height: 96, alignment: .center)

               Text(title)
                   .font(.headline)
                   .bold()
                   .multilineTextAlignment(.leading)
                             .foregroundColor(.white)
                                 .lineLimit(2)
                   .frame(maxWidth: .infinity, alignment: .leading)

                Text(hours)
                    .font(.footnote)
                    .foregroundColor(Color.white.opacity(0.7))
                    .frame(maxWidth: .infinity, alignment: .leading)

            }
            .frame(maxWidth: 200)
            .padding(.horizontal, 16)
            .padding(.bottom, 0)
        }
        .frame(height: 200)
        .background(
            LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0), Color.black.opacity(0.2)]), startPoint: .center, endPoint: .bottom)
        )
        .background(
            LinearGradient(gradient: Gradient(colors: colors), startPoint: .top, endPoint: .bottom)
        )
        .clipShape(RoundedRectangle(cornerRadius: 22, style: .continuous))
        .shadow(color: colors[0].opacity(0.3), radius: 20, x: 0, y: 10)
            .overlay(
                    Image(logo)
                    .resizable()
                    .frame(maxWidth: 24, maxHeight: 24, alignment: .center)
                            .padding()
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
            )

    }
}

struct CourseCard_Previews: PreviewProvider {
    static var previews: some View {
        CourseCard()
    }
}
