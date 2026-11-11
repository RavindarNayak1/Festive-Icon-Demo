//
//  ContentView.swift
//  Festive Icon demo
//
//  Created by ravindar  on 11/11/26.
//

import SwiftUI

import SwiftUI
import UIKit

struct ContentView: View {

    var body: some View {
        VStack(spacing: 20) {

            Button("Change to Festival Icon 🎉") {
                UIApplication.shared.setAlternateIconName("AppIconFest") { error in
                    if let error = error {
                        print("Error: \(error.localizedDescription)")
                    } else {
                        print("Festival icon changed!")
                    }
                }
            }

            Button("Restore Default Icon") {
                UIApplication.shared.setAlternateIconName(nil)
            }
        }
    }
}

#Preview {
    ContentView()
}
