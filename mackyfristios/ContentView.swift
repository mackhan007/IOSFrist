//
//  ContentView.swift
//  mackyfristios
//
//  Created by Mohammed Aman Khan on 13/05/21.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    var body: some View {
        VStack(alignment: .leading) {
            Text("Macky")
                .fontWeight(.bold)
                .font(.title)
                .foregroundColor(.green)
            HStack {
                Text("testing")
                    .font(.subheadline)
                Spacer()
                Text("new")
                    .font(.subheadline)
            }
            Divider()
            VStack(alignment: .center) {
                Image("apptest")
                    .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.white,lineWidth: 5))
                    .shadow(radius: 20)
            }
            .aspectRatio(contentMode: .fit)
            Divider()
            VStack {
                Map(coordinateRegion: $region)
            }
            Divider()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro Max")
    }
}
