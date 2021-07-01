//
//  ContentView.swift
//  Fructus
//
//  Created by 김동환 on 2021/06/15.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    
    var fruits: [Fruit] = fruitsData
    @State private var isShowingSettings: Bool = false
    
    //MARK: - Body
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()){ item in
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing:Button(action:{
                isShowingSettings = true
            }) {
                Image(systemName: "slider.horizontal.3")
            }
            )
            .sheet(isPresented: $isShowingSettings, content: {
                SettingsView()
            })
        }
        //아이패드에서 크게 보임
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro Max")
    }
}
