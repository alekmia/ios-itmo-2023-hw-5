import SwiftUI

@main
struct ios_itmo_2023_assignment_5App: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                Screen_1_1()
                    .tabItem {
                        Text("1_1")
                    }
                
                Screen_1_2()
                    .tabItem {
                        Text("1_2")
                    }

                Screen_2_1()
                    .tabItem {
                        Text("2_1")
                    }
            }
        }
    }
}
