//
//  Home.swift
//  luxme1
//
//  Created by Rayna Shah on 3/3/23.
//

import SwiftUI

struct Home: View {
    @StateObject var expenseViewModel: ExpenseViewModel = .init()
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
        VStack(spacing: 12){
            HStack(spacing: 18){
                VStack(alignment: .leading, spacing: 4) {
                    Text("Welcome, budgeting queen!")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                    
                    Text("luxMe Expense Tracker")
                        .font(.title2.bold())
                        .fontWeight(.thin)
                    .multilineTextAlignment(.leading)}
               
                
                
                .frame(maxWidth: .infinity, alignment: .leading)
                
                NavigationLink {
                    FilteredDetailView()
                    
                } label: {
                    Image(systemName: "hexagon.fill")
                        .foregroundColor(.gray)
                        .overlay(content: {
                            Circle()
                                .stroke(.white,lineWidth: 2)
                                .padding(7)
                        })
                        .frame(width: 40, height: 40)
                        .background(Color.white,in:
                                        RoundedRectangle(cornerRadius: 10, style: .continuous))
                        .shadow(color: .black.opacity(0.1), radius:
                                    5, x : 5, y: 4)
                }
                
            }
            ExpenseCardView()
            TransactionsView()
        }
        .padding()
        }
        .background{
            Color("palepink")
                .ignoresSafeArea()
        }
        
        
    }
    
    //MARK: Transactions View
    @ViewBuilder
    func TransactionsView()->some View{
        VStack(spacing: 15){
            Text("Transactions")
                .font(.title2)
                .fontWeight(.thin)
                .opacity(0.7)
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.bottom)
           
            
            ForEach(expenseViewModel.expenses){expense in
                //MARK: transaction card view
             TransactionCardView(expense: expense)
                    .environmentObject(expenseViewModel)
                    .contentShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                  
       
                    
                    
                
            }
            
        }
        .padding(.top)
    }
    
    
  
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

