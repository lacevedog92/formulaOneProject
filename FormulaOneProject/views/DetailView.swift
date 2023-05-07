//
//  DetailView.swift
//  FormulaOneProject
//
//  Created by Luis Acevedo on 20/03/23.
//

import SwiftUI

struct DetailView: View {
    let resultItem : Results
    var body: some View {
        
        VStack(alignment: .center){
            ConstructorBackground(resultItem: resultItem)
                .frame(height: 100 )
                //.ignoresSafeArea(edges:.top)
            DriverProfilePhoto(resultItem: resultItem)
                .offset(y:-5)
            //Spacer()
            Form{
                Section(header: Text("Driver Information")) {
                    HStack{
                        Text("Name:")
                            .font(.callout)
                        Spacer()
                        Text(resultItem.driver.givenName + " " + resultItem.driver.familyName)
                            .foregroundColor(.gray)
                            .font(.callout)
                            .frame(alignment: .leading)
                    }
                    HStack{
                        Text("Car Number:")
                            .font(.callout)
                            Spacer()
                        Text(resultItem.driver.permanentNumber)
                            .foregroundColor(.gray)
                            .font(.callout)
                            .frame(alignment: .leading)
                    }
                    HStack{
                        Text("Nationality:")
                            .font(.callout)
                            Spacer()
                        Text(resultItem.driver.nationality)
                            .foregroundColor(.gray)
                            .font(.callout)
                            .frame(alignment: .leading)
                    }
                    HStack{
                        Text("Date of Birth:")
                            .font(.callout)
                            Spacer()
                        Text(resultItem.driver.dateOfBirth)
                            .foregroundColor(.gray)
                            .font(.callout)
                            .frame(alignment: .leading)
                    }
                }
                Section(header: Text("Race Standings")) {
                    HStack{
                        Text("Points:")
                            .font(.callout)
                            Spacer()
                        Text(resultItem.points)
                            .foregroundColor(.gray)
                            .font(.callout)
                            .frame(alignment: .leading)
                    }

                    HStack{
                        Text("Grid Position:")
                            .font(.callout)
                            Spacer()
                        Text(resultItem.grid)
                            .foregroundColor(.gray)
                            .font(.callout)
                            .frame(alignment: .leading)
                    }
                    HStack{
                        Text("Final Position:")
                            .font(.callout)
                            Spacer()
                        Text(resultItem.position)
                            .foregroundColor(.gray)
                            .font(.callout)
                            .frame(alignment: .leading)
                    }
                    HStack{
                        Text("Race Status:")
                            .font(.callout)
                            Spacer()
                        Text(resultItem.status)
                            .foregroundColor(.gray)
                            .font(.callout)
                            .frame(alignment: .leading)
                    }
                    HStack{
                        Text("Laps Completed:")
                            .font(.callout)
                            Spacer()
                        Text(resultItem.laps)
                            .foregroundColor(.gray)
                            .font(.callout)
                            .frame(alignment: .leading)
                    }
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(resultItem: Results.result1())
    }
}
