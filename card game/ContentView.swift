//
//  ContentView.swift
//  card game
//
//  Created by Anawrul Kabir Fahad on 13/4/23.
//

import SwiftUI

struct ContentView: View {
    
    // @State is for special variable
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerscore = 0
    @State var cpuscore = 0
    
    var body: some View {
        ZStack{
            
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
               
                Button {
                    deal()
                } label: {
                    Image("button")
                }

               
                Spacer()
                    
            
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerscore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuscore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                
                Spacer()
            }
            
            
            
        }
        
    }
    
    func deal(){
       // randomize the player card
        let  playercardvalue = Int.random(in: 2...14)
        playerCard = "card" + String(playercardvalue)
                                      
        
       // randomize the cpu card
        let  cpucardvalue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpucardvalue)
        
        
       // update the score
        
        if playercardvalue > cpucardvalue{
            // add 1 to player score
            playerscore += 1
        }
        else if playercardvalue < cpucardvalue{
            // add 1 to cpu score
            cpuscore += 1
        }
       
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
