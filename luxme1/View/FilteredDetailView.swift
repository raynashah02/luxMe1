//
//  FilteredDetailView.swift
//  luxme1
//
//  Created by Rayna Shah on 3/8/23.
//

import SwiftUI

struct FilteredDetailView: View {
    @EnvironmentObject var expenseViewModel: ExpenseViewModel
    //MARK: Environment Values
    @Environment(\.self) var env
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 15){
            HStack(spacing: 15){
                // MARK: back button
                Button {
                    env.dismiss()
                } label: {
                    Image(systemName: "arrow.backward.cirlce.fill")
                        .foregroundColor(.gray)
                        .frame(width: 40, height: 40)
                        .background(Color.white,in:
                                        RoundedRectangle(cornerRadius: 10, style: .continuous))
                        .shadow(color: .black.opacity(0.1), radius: 5, x: 5, y: 5)
                }
                
                
                Text("Transaction")
                    .font(.title2.bold())
                    .opacity(0.7)
                    .frame(maxWidth: .infinity,alignment: .leading)
                
                Button{
                } label: {
                    Image(systemName: "slider.horizontal.3")
                        .foregroundColor(.gray)
                    .frame(width: 40, height: 40)
                    .background(Color.white,in:
                                    RoundedRectangle(cornerRadius: 10, style: .continuous))
                    .shadow(color: .black.opacity(0.1), radius: 5, x: 5, y: 5)}
                
                //MARK: Expense Card View for Current Selected Date
            }
                .padding()
        }
            
            
   navigationBarHidden(true)
            .background{
                Color("BG")
                    .ignoresSafeArea()
            }
    }
}

struct FilteredDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FilteredDetailView()
            .environmentObject(ExpenseViewModel())
    }
}
}
