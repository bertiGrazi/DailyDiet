//
//  DDMealsWithinTheDietVCard.swift
//  DailyDiet
//
//  Created by Grazi  Berti on 14/07/23.
//

import SwiftUI

struct DDMealsWithinTheDietVCard: View {
    let percentageValue: String
    let abovePercentage: Bool
    
    var body: some View {
        VStack(alignment: .center, spacing: 2) {
            ZStack {
                Image(systemName: "arrow.up.right")
                    .frame(width: 24, height: 24)
                    .position(x: 290, y: 8)
                    .foregroundColor(abovePercentage ? ColorTheme().greenDark : ColorTheme().redDark)
            }
            
            Text(percentageValue)
                .foregroundColor(ColorTheme().grayOne)
                .bold()
                .font(.title)
            
            Text("das refeições dentro da dieta")
                .foregroundColor(ColorTheme().grayTwo)
                .font(Font.custom("Nunito Sans", size: 14))

        }

        .padding(.horizontal, 16)
        .padding(.vertical, 20)
        .frame(width: 327,height: 107, alignment: .center)
        .background(abovePercentage ? ColorTheme().greenLight : ColorTheme().redLight)
        .cornerRadius(8)

    }
}

struct DDMealsWithinTheDietVCard_Previews: PreviewProvider {
    static var previews: some View {
        DDMealsWithinTheDietVCard(percentageValue: "90,86%", abovePercentage: true)
            .previewLayout(.sizeThatFits)
        
        DDMealsWithinTheDietVCard(percentageValue: "90,86%", abovePercentage: false)
            .previewLayout(.sizeThatFits)
    }
}
