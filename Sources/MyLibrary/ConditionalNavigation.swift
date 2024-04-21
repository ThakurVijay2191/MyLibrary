//
//  SwiftUIView.swift
//  
//
//  Created by Nap Works on 21/04/24.
//

import SwiftUI

@available(iOS 13.0, *)
public struct ConditionalNavigation<Destination: View>: View {
    @ViewBuilder var destination: Destination
    @Binding var isActive: Bool
    var isNavigationBarHidden: Bool
    
    public init(isActive: Binding<Bool>, isNavigationBarHidden: Bool = false, @ViewBuilder destination: @escaping ()-> Destination) {
        self.destination = destination()
        self._isActive = isActive
        self.isNavigationBarHidden = isNavigationBarHidden
    }
    public var body: some View {
        NavigationLink("", destination: destination.navigationBarBackButtonHidden(isNavigationBarHidden), isActive: $isActive)
    }
}

