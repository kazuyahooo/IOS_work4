//
//  PieChartView.swift
//  IOS_work4
//
//  Created by 王瑋 on 2020/5/19.
//  Copyright © 2020 王瑋. All rights reserved.
//

import SwiftUI

struct PieChartView: View {
    var startAngle: [Angle]
    var body: some View {
        ZStack {
            PieChart(startAngle: self.startAngle[0],
                     endAngle: self.startAngle[1])
                .fill(Color.red)
            PieChart(startAngle: self.startAngle[1],
                     endAngle: self.startAngle[2])
                .fill(Color.orange)
            PieChart(startAngle: self.startAngle[2],
                     endAngle: self.startAngle[3])
                .fill(Color.yellow)
            PieChart(startAngle: self.startAngle[3],
                     endAngle: self.startAngle[4])
                .fill(Color.green)
            PieChart(startAngle: self.startAngle[4],
                     endAngle: self.startAngle[5])
                .fill(Color.blue)
            PieChart(startAngle: self.startAngle[5],
                     endAngle: .degrees(360))
                .fill(Color.purple)
        }
    }
}

struct PieChartView_Previews: PreviewProvider {
    static var previews: some View {
        PieChartView(startAngle: [.degrees(0), .degrees(100), .degrees(100), .degrees(360), .degrees(360),.degrees(360)])
            .frame(width: 200, height: 200)
    }
}

struct PieChart: Shape {
    var startAngle: Angle
    var endAngle: Angle
    func path(in rect: CGRect) -> Path {
        Path { (path) in
            let center = CGPoint(x: rect.midX, y: rect.midY)
            path.move(to: center)
            path.addArc(center: center, radius: rect.midX,
                        startAngle: startAngle, endAngle: endAngle, clockwise: false)
        }
    }
}
