//
//  WeeklyCalendar.swift
//  wordaday
//
//  Created by Sabrina Freifeld on 12/25/22.
//
import SwiftUI

struct WeeklyCalendar: View {
    let daysOfWeek = ["S", "M", "T", "W", "T","F","S"]
    let calendar = Calendar.current
    

       var body: some View {
           // Determine the current month and year
           let date = Date()


           // Get the range of days in the current week
           let range = calendar.range(of: .day, in: .weekOfMonth, for: date)!
           let startDay = range.lowerBound
           let endDay = range.upperBound - 1
          
           VStack {
            HStack{
            Spacer()
             ForEach(0..<7) { index in
                 Spacer()
                 HStack {
                   Text(self.daysOfWeek[index])
                    .font(Font.custom("Quicksand-Regular", size: 18))
                     .foregroundColor(.white)
                        
                 Spacer()
                 }
             }
            }
               HStack {
               ForEach(startDay..<endDay+1) { day in
                Spacer()
                  ZStack {
                     // Display a circle around today's day
                     if day == calendar.component(.day, from: date) {
                        Circle()
                           .fill(Color.indigo)
                           .frame(width: 30, height: 30, alignment: .center)
                     }

                     Text("\(day)")
                        .font(Font.custom("Quicksand-Regular", size: 18))
                        .foregroundColor(.white)
                  }
                   Spacer()
               }
                Spacer()
               }
           }
       }
    }
struct WeeklyCalendar_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
        GradientBackground()
        WeeklyCalendar()
        }
    }
}

