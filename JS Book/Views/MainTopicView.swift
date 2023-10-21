//
//  ContentView.swift
//  JS Book
//
//  Created by Artem Leschenko on 21.10.2023.
//

import SwiftUI
import WebKit

struct MainTopicView: View {
    var topic: JSProgramming
    var body: some View {
        VStack {
            ScrollView {
                ForEach(topic.subTopics, id: \.title) { item in
                    NavigationLink(destination: MainTopicView(topic: JSProgramming.exampleMainTopic)
                        .navigationBarTitle(item.title, displayMode: .inline)
                    ) {
                        Text(item.title)
                    }
                }
                Text("JavaScript - це мова програмування, яка використовується для створення динамічних веб-сайтів. Вона може бути використана для керування вмістом сторінок, обробки подій, маніпулювання об'єктами та багато чого іншого.")
                Text("""
        function welcomeMessage() {
          return 'Ласкаво просимо до світу JavaScript!';
        }
        console.log(welcomeMessage());
        
        """).font(.system(size: 12, design: .monospaced))
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.gray)
                    .cornerRadius(12)
            }
        }
    }
}

#Preview {
    MainTopicView(topic: JSProgramming.exampleMainTopic)
}



struct WebView: UIViewRepresentable {
    let htmlString: String

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.loadHTMLString(htmlString, baseURL: nil)
    }
}
