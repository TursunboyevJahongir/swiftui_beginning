//
//  TextTest.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jahongir on 14/09/22.
//

import SwiftUI

struct TextTest: View {
    @State var heartChange:Bool = true
        var body: some View {
            ZStack {
                Image(systemName: heartChange ? "heart":"heart.fill")
                    .font(.system(size: 170))
                    .foregroundColor(heartChange ?  .blue: .red)
                    .scaleEffect(heartChange ? 1 : 2)
                    .animation(.easeInOut(duration: 1), value: heartChange)
                TestView().padding()
            } //ZStack
            .onTapGesture {
                self.heartChange.toggle()
            }
        } //body
}

struct TestView: View {
        @State var timeNow = ""
        let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
        var dateFormatter: DateFormatter {
                let fmtr = DateFormatter()
                fmtr.dateFormat = "LLLL dd, HH:mm:ss"
                return fmtr
        }
        
        var body: some View {
                Text(timeNow)
                        .onReceive(timer) { _ in
                                self.timeNow = dateFormatter.string(from: Date())
                        }
        }
}

struct TextTest_Previews: PreviewProvider {
    static var previews: some View {
        TextTest()
    }
}
