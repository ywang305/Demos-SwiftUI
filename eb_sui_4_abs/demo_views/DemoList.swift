//
//  DemoList.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/7/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI

struct DemoList: View {
    var body: some View {
        List {
            Text("one")
            Text("two")
            Text("three")
        }
    }
}

struct DemoList2: View {
    var body: some View {
        List(0..<50) {
            Text("Item # \($0)")
        }
    }
}

struct DemoListNav: View {
    var body: some View {
        NavigationView {
            List(0..<50) { num in
                NavigationLink(destination: Text("User \(num)")) {
                    // item label in lambda
                    HStack {
                        Image(systemName: "person")
                        Text("User number \(num)")
                    }
                }
            }.navigationBarTitle("Super Users")
        }
    }
}


// section + groupStyle()
struct DemoSection: View {
    var body: some View {
        NavigationView {
            List{
                Section(header: Text("Drivers header"),
                        footer: Text("Drivers footer")) {
                    ForEach(0..<3) { id in
                        NavigationLink(destination: Text("Driver \(id)")) {
                            HStack {
                                Image(systemName: "person")
                                Text("Driver ID: \(id)")
                            }
                        }
                    }
                }
                Section(header: Text("Passengers")) {
                    ForEach(20..<55) { id in
                        NavigationLink(destination: Text("Passenger \(id)")) {
                            HStack {
                                Image(systemName: "person")
                                Text("Passenger ID: \(id)")
                            }
                        }
                    }
                }
                }.navigationBarTitle("All Users").listStyle(GroupedListStyle())
        }
    }
}


struct DemoList_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DemoList()
            DemoList2()
            DemoListNav()
            DemoSection()
            
        }
    }
}
