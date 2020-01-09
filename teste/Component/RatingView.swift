//
//  RatingView.swift
//  teste
//
//  Created by Guilherme Deconto on 08/01/20.
//  Copyright © 2020 Guilherme Deconto. All rights reserved.
//

import SwiftUI

struct RatingView: View {
    
    @Binding var rating: Int
    
    var label = ""
    
    var maximumRating = 5
    
    var offImage: Image?
    var onImage = Image(systemName: "star.fill")
    
    var offColor = Color.gray
    var onColor = Color.yellow
    
    var body: some View {
        VStack{
            HStack {
                Text("\(rating)" + ".0")
                    .bold()
                    .foregroundColor(.gray)
                    .font(.system(size: 20)).frame(width: 35, height: 20, alignment: .center)
                
                ForEach(1..<maximumRating + 1) { number in
                    self.image(for: number)
                        .foregroundColor(number > self.rating ? self.offColor : self.onColor)
                        .onTapGesture {
                            self.rating = number
                    }
                }
            }
            Text("105K Ratings").foregroundColor(.gray).font(.system(size: 10))
        }
        
    }
    func image(for number: Int) -> Image {
        if number > rating {
            return offImage ?? onImage
        } else {
            return onImage
        }
    }
}

//struct RatingView_Previews: PreviewProvider {
//    static var previews: some View {
//        RatingView(rating: .constant(4))
//    }
//}
