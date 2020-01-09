//
//  FirstTab.swift
//  teste
//
//  Created by Guilherme Deconto on 08/01/20.
//  Copyright © 2020 Guilherme Deconto. All rights reserved.
//

import SwiftUI

struct FirstTab: View {
    
    @State var showingAlert = false
    @State var isappDownloaded = false
    @State var showingShare = false
    @State var rating: Int
    
    var body: some View {
        VStack {
            ScrollView(.vertical) {
                HStack {
                    Image("dig")
                        .resizable()
                        .frame(width: 150, height: 150, alignment: .center)
                        .cornerRadius(30)
                    Spacer()
                    VStack {
                        Text("Dig This!").bold().font(.title).frame(width: UIScreen.main.bounds.width/2.0, height: nil, alignment: .leading)
                        Text("Digging puzzles? Dig this!").foregroundColor(.gray).frame(width: UIScreen.main.bounds.width/2.0, height: nil, alignment: .leading)
                        Spacer()
                        HStack {
                            AppDownloadedButton(isappDownloaded: $isappDownloaded, showingAlert: $showingAlert)
                            if (!isappDownloaded){
                                Text("In App Purchases").foregroundColor(.gray).font(.system(size: 10)).frame(width: 55, height: nil, alignment: .leading)
                            }
                            Spacer()
                            Button(action: {self.showingShare = true }){
                                Image(systemName: "square.and.arrow.up").foregroundColor(.blue).font(.system(size: 22))
                            }.alert(isPresented: $showingShare) {
                                Alert(title: Text("Important message"), message: Text("You just shared this application with your friends"), dismissButton: .default(Text("Got it!")))
                            }
                        }
                    }.frame(width: nil, height: 150, alignment: .center)
                } .padding(20)
                HStack {
                    VStack{
                        HStack {
                            Text("4.7")
                                .bold()
                                .foregroundColor(.gray)
                                .font(.system(size: 20)).frame(width: 35, height: 20, alignment: .center)
                            RatingView(rating: $rating)
                        }
                        Text("105K Ratings").foregroundColor(.gray).font(.system(size: 10))
                    }
                    Spacer()
                    VStack{
                        Text("N°4")
                            .bold()
                            .foregroundColor(.gray)
                            .font(.system(size: 20))
                        
                        Text("Casual")
                            .foregroundColor(.gray)
                            .font(.system(size: 11))
                    }
                    Spacer()
                    VStack{
                        HStack{
                            Text("14").bold().background(Color.red).frame(width: 20, height: 20, alignment: .center).foregroundColor(.white).font(.system(size: 10))
                            Text("12+").bold().foregroundColor(.gray).font(.system(size: 20))
                        }
                        Text("Age").foregroundColor(.gray).font(.system(size: 15))
                    }
                    
                }.padding(.leading, 20).padding(.trailing, 20)
                
                ScrollView(.horizontal){
                    HStack{
                        Image("imagem1").resizable().frame(width: 270, height: 500, alignment: .center)
                        Image("imagem2").resizable().frame(width: 270, height: 500, alignment: .center)
                        Image("imagem1").resizable().frame(width: 270, height: 500, alignment: .center)
                        Image("imagem2").resizable().frame(width: 270, height: 500, alignment: .center)
                        Image("imagem1").resizable().frame(width: 270, height: 500, alignment: .center)
                        Image("imagem2").resizable().frame(width: 270, height: 500, alignment: .center)
                    }
                    
                }
            }
        }
    }
    
}
