//
//  UserData.swift
//  Landmark
//
//  Created by Juan David Cajamarca Acuña on 20/08/20.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
