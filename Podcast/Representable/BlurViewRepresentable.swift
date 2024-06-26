//
//  BlurViewRepresentable.swift
//  Podcast
//
//  Created by tanxl on 2024/6/11.
//

import SwiftUI

struct BlurViewRepresentable: UIViewRepresentable {
    typealias UIViewType = BlurVisualEffectView
    
    var style: UIBlurEffect.Style
    var alpha: CGFloat = 1.0
    
    func makeUIView(context: Context) -> BlurVisualEffectView {
        BlurVisualEffectView()
    }
    
    func updateUIView(_ uiView: BlurVisualEffectView, context: Context) {
        uiView.blurStyle = style
        uiView.effectView.alpha = alpha
    }
}

class BlurVisualEffectView: UIView {
    
    var blurStyle: UIBlurEffect.Style = .light {
        didSet {
            effectView.effect = UIBlurEffect(style: blurStyle)
        }
    }
    
    lazy var effectView: UIVisualEffectView = UIVisualEffectView(effect: nil)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        effectView.effect = UIBlurEffect(style: blurStyle)
        addSubview(effectView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        effectView.frame = bounds
    }
}

#Preview {
    
    ZStack(content: {
        Color.cyan
        
        Image("turtlerock")
            .frame(width: 200, height: 200)
            .clipped()
        
        BlurViewRepresentable(style: .light)
            .frame(width: 100, height: 200)
    })
}
