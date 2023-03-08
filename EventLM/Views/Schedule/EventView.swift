//
//  EventView.swift
//  EventLM
//
//  Created by Owen Bress (student LM) on 2/28/23.
// DETAIL OF HOME VIEW

import SwiftUI

struct EventView: View {
    @State var address = "121,Penarth,Rd,,Bala,Cynwyd,,PA,19004"
    
    var body: some View {
        VStack{
            TextField("CLICK ME TO DO LOCATION",text:$address)
                .foregroundColor(.red)
                .multilineTextAlignment(.center)
                .padding()
            
            Button {
                UIApplication.shared.openURL(NSURL(string: "http://maps.apple.com/?address=\(address.replacingOccurrences(of: " ", with: ","))")! as URL)
                
            } label:{
                Text("CLICK ME TO DO LOCATION")
            }
        }
    }
}

struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView()
    }
}