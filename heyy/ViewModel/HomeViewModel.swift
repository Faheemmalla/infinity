//
//  HomeViewModel.swift
//  infinity
//
//  Created by faheem yousuf malla on 20/09/25.
//

import SwiftUI
import Combine


class HomeViewModel: ObservableObject {
    @Published var items = albums
}

