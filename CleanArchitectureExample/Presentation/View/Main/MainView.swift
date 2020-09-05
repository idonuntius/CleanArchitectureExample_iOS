//
//  MainView.swift
//  CleanArchitectureExample
//
//  Created by NatsukiIdota on 2020/07/26.
//  Copyright © 2020 idonuntius. All rights reserved.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ArticleListView().tabItem {
                VStack {
                    Image(systemName: "folder")
                    Text("Home")
                }
            }.tag(0)

            FavoriteView().tabItem {
                VStack {
                    Image(systemName: "star")
                    Text("Favorite")
                }
            }.tag(1)
        }

    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
