//
//  WordCard.swift
//  wordaday
//
//  Created by Sabrina Freifeld on 10/3/22.
//

import SwiftUI


struct WordCard: View {
    @ObservedObject var viewModel: WordOfTheDayViewModel
    @State private var showDelete: Bool = false
    @State private var showSave: Bool = false
    @State private var showMessage: Bool = false
    @Binding var position: CGSize
    @Binding var message: Bool
    var body: some View {
        
        
        
        
        ZStack {
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(.white)
                .frame(width: 285, height: 320)
                .shadow(color: .gray, radius: 2.5, x: 0, y: 5)
            
            VStack {
                Text("\(viewModel.word)")
                    .font(Font.custom("Quicksand-Bold", size: 40))
                    .foregroundColor(Color("Indigo"))
                
                Text("\(viewModel.wordPartofSpeech)")
                    .font(Font.custom("Quicksand-SemiBold", size: 15))
                    .foregroundColor(Color("Indigo"))
                
                Text("\(viewModel.wordDescription)")
                    .font(Font.custom("Quicksand-Medium", size: 20))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("Indigo"))
                    .padding([.top, .bottom])
                
                    
                Text("“\(viewModel.wordExample)”")
                    .font(Font.custom("Quicksand-Regular", size: 12))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("Indigo"))
                .padding(.bottom)
                
                
            }
            .frame(width: 270, height: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/)

            
        }

            
    
    
            .background(showDelete ? Color.red : (showSave ? Color.green : Color.clear))
            .offset(position)
            .animation(.easeInOut)
            .gesture(
                DragGesture()
                    .onChanged { drag in
                        if drag.translation.width < -80 {
                            withAnimation  {
                            self.position = CGSize(width: -400, height: 0)
                            self.message = true
                            }} else if drag.translation.width > 80 {
                            withAnimation {
                            self.position = CGSize(width: 400, height: 0)
                            self.message = true
                            }} else {
                            }
                            }
                            .onEnded { _ in
                                if self.showDelete {
                                    //self.showMessage = true
                                } else if self.showSave {
                                    //self.showMessage = true
                                }
                            }
                  )
            
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.willEnterForegroundNotification)) { _ in
            print("WordOfTheDayView: willEnterForegroundNotification")
                  viewModel.fetchData()
        }
        .onAppear {
            print("WordOfTheDayView: onAppear")
            viewModel.fetchData()
          }
        
    }
    }




