//
//  ContentView.swift
//  Oak
//
//  Created by Sabrina Silvestri on 15/11/23.
//

import SwiftUI


struct ContentView: View {
    
    @State var sliderValue: Double = 0
    @State var nextView: Bool = false
    
    var body: some View {
        
        NavigationStack{
            
            ScrollView{
                
                ScrollView(.horizontal){
                    LazyHStack{
                        ZStack{
                            Image("b1")
                                .resizable()
                                .frame(width: 100, height: 150)
                                .cornerRadius(15)
                                .padding(.horizontal, 5)
                            Text("Deep Calm")
                                .foregroundColor(.white)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .padding(.top, 100)
                        }
                        ZStack{
                            Image("b2")
                                .resizable()
                                .frame(width: 100, height: 150)
                                .cornerRadius(15)
                                .padding(.horizontal, 5)
                            Text("Box")
                                .foregroundColor(.white)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .padding(.top, 100)
                        }
                        ZStack{
                            Image("b3")
                                .resizable()
                                .frame(width: 100, height: 150)
                                .cornerRadius(15)
                                .padding(.horizontal, 5)
                            Text("Awake")
                                .foregroundColor(.white)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .padding(.top, 100)
                        }
                    }
                    .padding()
                    .padding(.top)
                    
                }
            
                VStack(alignment: .leading){
                    Text("The power of deep calm")
                        .font(.title)
                        .padding(.top, 30)
                        .padding(.horizontal)
                        .fontWeight(.regular)
                        .foregroundColor(Color(UIColor.darkGray))
                    Text("This exercise has been called \"a natural tranquilizer for the nervous system\" by Dr.Andrew Weil, easing the body into a state of calmness and relaxation. Note: Always discontinue use if feeling lightheaded.")
                        .font(.title3)
                        .padding(.top, 5)
                        .padding(.horizontal)
                        .fontWeight(.regular)
                        .foregroundColor(Color(UIColor.darkGray))
                    
                    VStack(alignment: .leading){
                        Text("METHOD")
                            .font(.caption2)
                            .padding(.top, 30)
                            .padding(.horizontal)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(UIColor.darkGray))
                        Divider()
                        
                        VStack(alignment: .leading) {
                            Text("Inhale for 4 seconds")
                            Divider()
                            Text("Hold for 7 seconds")
                            Divider()
                            Text("Exhale for 8 seconds")
                        }
                        .foregroundColor(Color(UIColor.gray))
                        .padding(.leading)
                        Divider()
                    }
                }
                
                HStack() {
                    Text("\(Int(sliderValue + 1)) \(sliderValue <= 0 ? "SET" : "SETS")")
                        .fontWeight(.semibold)
                        .font(.footnote)
                    
                    Text("\(sliderValue == 0 ? "(RECOMMENDED)" : "")")
                        .fontWeight(.semibold)
                        .font(.footnote)
                        .foregroundStyle(.gray)
                    Spacer()
                    Group {
                        if sliderValue == 0 {
                            Text("1 MIN 54 SEC")
                        } else if sliderValue == 1 {
                            Text("3 MIN 48 SEC")
                        }
                        else {
                            Text("5 MIN 42 SEC")
                        }
                        
                    }
                    .fontWeight(.semibold)
                    .font(.footnote)
                    .foregroundStyle(.gray)
                }
                .padding()
                Divider()
                Slider(value: $sliderValue, in: 0...2, step: 1)
                    .padding()
                Divider()
            }
            .background(
                Image("background")
                    .resizable()
                    .scaledToFill()
                    .opacity(0.2)
                    .ignoresSafeArea()
                    .offset(y: -500)
                    .blur(radius: 3)
            )
            
            .background(Color.yellow.opacity(0.05))
            .navigationBarTitle(Text("Breathe"))
            
            
            ZStack(alignment: .center){
                Rectangle()
                    .frame(width: 350, height: 60)
                    .cornerRadius(100)
                    .foregroundColor(.gray)
                
                NavigationLink {
                    ExerciseView()
                } label: {
                    Text("BEGIN EXERCISE")
                        .foregroundStyle(.white)
                        .font(.headline)
                        .fontWeight(.bold)
                        .frame(width: 360, height: 60)
                }
            }
        }
        
        
    }
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.font: UIFont(name: "Arial", size: 41), .foregroundColor: UIColor.brown]
    }
}

#Preview {
    ContentView()
}
