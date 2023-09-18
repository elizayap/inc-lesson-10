//
//  ContentView.swift
//  Clicker
//
//  Created by Danielle Eliza Salang Yap on 6/8/23.
//

import SwiftUI

struct ContentView: View {
    @State var robux: Int = 0
    @State var errmsg: String = " "
    var body: some View {
       
        VStack(spacing: 30){
            Text(String(robux))
            Button("Press me for free robux!!😱") {
                self.robux += 5
                errmsg="+5 robux"
            }
            Button("Buy for 100 robux"){
                if self.robux > 99{
                    self.robux -= 100
                   errmsg = "bought something🥳"
                }
                else{
                    errmsg = "Bro is broke💀"
                }
            }
            Text(errmsg)
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
