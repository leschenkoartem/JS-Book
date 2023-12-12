//
//  СщтеутеМшуц.swift
//  JS Book
//
//  Created by Artem Leschenko on 05.12.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("JavaScript").font(.title).bold()) {
                                ForEach(JSProgramming.javascriptEncyclopedia, id: \.topic) { element in
                                    NavigationLink(destination: MainTopicView(topic: element, textColor: .yellow)
                                        .navigationBarTitle(element.topic, displayMode: .inline)
                                        .accentColor(.yellow)

                                    ) {
                                        Text(element.topic)
                                            .fontWeight(.medium)
                                    }.foregroundColor(.yellow)
                                }
                            }

                    
                    Section(header: Text("HTML").font(.title).bold()) {
                                ForEach(JSProgramming.HTMLEncyclopedia, id: \.topic) { element in
                                    NavigationLink(destination: MainTopicView(topic: element, textColor: .blue)
                                        .accentColor(.blue)
                                        .navigationBarTitle(element.topic, displayMode: .inline)
                                    ) {
                                        Text(element.topic)
                                            .fontWeight(.medium)
                                    }.foregroundColor(.blue)
                                }
                            }
                    
                    Section(header: Text("CSS").font(.title).bold()) {
                                ForEach(JSProgramming.CSSEncyclopedia, id: \.topic) { element in
                                    NavigationLink(destination: MainTopicView(topic: element, textColor: .orange)
                                        .accentColor(.orange)
                                        .navigationBarTitle(element.topic, displayMode: .inline)
                                    ) {
                                        Text(element.topic)
                                            .fontWeight(.medium)
                                    }.foregroundColor(.orange)
                                }
                            }
                }
                
                Spacer()
                
                Text("Made by Leschenko Artem")
                    .font(.system(size: 12))
            }.navigationTitle("Теми")
   
    }
    }
}

#Preview {
    ContentView()
}
