//
//  LandmarkRow.swift
//  Landmark
//
//  Created by Juan David Cajamarca Acuña on 12/08/20.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: LandmarkModel
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
                
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
