//
//  RoundedCornersButtonStyle.swift
//  SwiftUIButtonStyles
//
//  Created by Alex Nagy on 22.02.2021.
//

import SwiftUI

struct RoundedCornersButtonStyle: ButtonStyle {
    
    enum PressedAnimation {
        case none
        case fade(opacity: Double)
        case scale(scale: CGFloat)
        
        var opacity: Double {
            switch self {
            case .none:
                return 1
            case .fade(opacity: let opacity):
                return opacity
            case .scale(_):
                return 1
            }
        }
        
        var scale: CGFloat {
            switch self {
            case .none:
                return 1
            case .fade(_):
                return 1
            case .scale(scale: let scale):
                return scale
            }
        }
    }
    
    var font: Font = Font.system(size: 16, weight: .bold)
    var padding: CGPoint = CGPoint(x: 12, y: 8)
    var backgroundColor: Color = Color.blue
    var foregroundColor: Color = Color(.systemBackground)
    var strokeColor: Color = Color.blue
    var strokeLineWidth: CGFloat = 2
    var cornerRadius: CGFloat = 8
    var shadowRadius: CGFloat = 0
    var depthColor: Color = .black
    var depthOffset: CGPoint = CGPoint(x: 0, y: 3)
    var pressedAnimation: PressedAnimation = .fade(opacity: 0.5)
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(font)
            .padding(.horizontal, padding.x)
            .padding(.vertical, padding.y)
            .background(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(backgroundColor)
                    .shadow(radius: shadowRadius)
                    .overlay(
                        RoundedRectangle(cornerRadius: cornerRadius)
                            .stroke(strokeColor, lineWidth: strokeLineWidth)
                    )
                    .background(
                        RoundedRectangle(cornerRadius: cornerRadius)
                            .fill(pressedAnimation.scale != 1 ? depthColor : .clear)
                            .offset(x: pressedAnimation.scale != 1 ? depthOffset.x : 0, y: pressedAnimation.scale != 1 ? depthOffset.y : 0)
                    )
            )
            .foregroundColor(foregroundColor)
            .opacity(configuration.isPressed ? pressedAnimation.opacity : 1)
            .scaleEffect(configuration.isPressed ? pressedAnimation.scale : 1)
            .animation(.spring())
    }
}
