//
//  LineChart.swift
//  Motif
//
//  Created by Pan Weiheng on 2020/4/8.
//

import SwiftUI

struct LineChart: View {
    
    enum VerticalReference {
        case zero
        case mean
    }
    
    var data: [(Double, Double)]
    var verticalReference: VerticalReference = .mean
    
    var strokeColor: Color = .accentColor
    var frameColor: Color = .primary
    var axisColor: Color = .init(hue: 0, saturation: 0, brightness: 0.8)
    var frameLineWidth: CGFloat = 2
    var graphAxisLineWidth: CGFloat = 1

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                
                // Axis
                if self.verticalReference == .zero {
                    Path { path in
                        let leftEndpoint = CGPoint(
                            x: 0,
                            y: geometry.frame(in: .local).size.height * 0.5)
                        let rightEndpoint = CGPoint(
                            x: geometry.frame(in: .local).size.width,
                            y: geometry.frame(in: .local).size.height * 0.5)
                        
                        path.move(to: leftEndpoint)
                        path.addLine(to: rightEndpoint)
                    }.stroke(self.axisColor, lineWidth: self.graphAxisLineWidth)
                }
                
                // Graph
                Path { path in
                    
                    let points = self.getPoints(fromGeometryProxy: geometry)
                    path.move(to: points[0])
                    path.addLines(points)
                }
                .stroke(self.strokeColor, style: StrokeStyle(
                    lineWidth: self.graphAxisLineWidth,
                    lineCap:   .round,
                    lineJoin:  .round))
                .transformEffect(.init(verticalReflectionWithFrameHeight: geometry.frame(in: .local).size.height))
                
                // Frame
                Rectangle()
                    .strokeBorder(self.frameColor, lineWidth: self.frameLineWidth)
                    .frame(
                        width: geometry.frame(in: .local).size.width,
                        height: geometry.frame(in: .local).size.height)
            }
        
        }.clipped()
    }
    
    func getPoints(fromGeometryProxy geometry: GeometryProxy) -> [CGPoint] {
        
        let widthPerUnit: CGFloat = {
            if self.data.count <= 1 {
                return 0
            }
            let min = self.data.map { $0.0 }.min()!
            let max = self.data.map { $0.0 }.max()!
            return geometry.frame(in: .local).size.width / CGFloat(max - min)
        }()
        let firstComponentMin = self.data.map { $0.0 }.min()!
        let frameHeight = geometry.frame(in: .local).size.height
        let dy = frameHeight * 0.5
        
        var heightPerUnit: CGFloat
        var dSecondComponent: Double
        
        switch verticalReference {
        case .zero:
            
            heightPerUnit = {
                if self.data.count <= 1 {
                    return 0
                }
                let absoluteMax: CGFloat = max(
                    CGFloat(self.data.map { $0.1 }.max()!),
                    -CGFloat(self.data.map { $0.1 }.min()!)
                )
                if absoluteMax == 0 {
                    return .zero
                } else {
                    return frameHeight / absoluteMax * 0.5
                }
            }()
            dSecondComponent = 0.0
            
        case .mean:
            
            let secondComponentMin = self.data.map { $0.1 }.min()!
            let secondComponentMax = self.data.map { $0.1 }.max()!
            if secondComponentMax == secondComponentMin {
                heightPerUnit = .zero
            } else {
                heightPerUnit = frameHeight / CGFloat(secondComponentMax - secondComponentMin)
            }
            dSecondComponent = (secondComponentMax + secondComponentMin) * 0.5
        }
        
        return self.data.map {
            CGPoint(x: CGFloat($0.0 - firstComponentMin)  * widthPerUnit,
                    y: CGFloat($0.1 - dSecondComponent ) * heightPerUnit + dy)
        }
    }
}

struct LineChart_Previews: PreviewProvider {
    
    static var data: [(Double, Double)] = [
        (1.0, 1.0),
        (3.0, 4.0),
        (5.0, 2.0),
        (6.0, 3.0),
        (7.0, 0.0),
        (9.0, -1.5)
    ]
    
    static var previews: some View {
        Group {
            LineChart(data: data, verticalReference: .zero)
            LineChart(data: data, verticalReference: .mean, strokeColor: .orange)
                .colorScheme(.dark)
        }
    }
}

extension CGAffineTransform {
    init(verticalReflectionWithFrameHeight height: CGFloat) {
        self.init(a: 1, b: 0, c: 0, d: -1, tx: 0, ty: height)
    }
}
