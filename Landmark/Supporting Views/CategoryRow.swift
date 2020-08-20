//
//  CategoryRow.swift
//  Landmark
//
//  Created by Juan David Cajamarca Acuña on 20/08/20.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [LandmarkModel]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(self.categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(self.items) { landmark in
                        Text(landmark.name)
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow(
            categoryName: landmarkData[0].category.rawValue, items: Array(landmarkData.prefix(4))
        )
    }
}
