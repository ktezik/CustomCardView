//
//  CustomCardView.swift
//  CustomCardView
//
//  Created by Иван Гришин on 21.03.2023.
//

import UIKit

final class CustomCardView: UIView {
    
    // MARK: - Private Properties
    
    private var path = UIBezierPath()
    
    private var viewForSwipe: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white.withAlphaComponent(0.3)
        view.layer.cornerRadius = 2.fitH
        view.layer.cornerCurve = .continuous
        return view
    }()
    
    // MARK: - Initializer
    
    init() {
        super.init(frame: .zero)
        setupSwipeView()
        backgroundColor = .darkGray
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cycle
    
    override func draw(_ rect: CGRect) {
        drawPath()
        UIColor.orange.setFill()
        path.fill()
    }
    
    // MARK: - Private Methods
    
    private func setupSwipeView() {
        addSubview(viewForSwipe)
        
        NSLayoutConstraint.activate([
            viewForSwipe.topAnchor.constraint(equalTo: topAnchor),
            viewForSwipe.centerXAnchor.constraint(equalTo: centerXAnchor),
            viewForSwipe.heightAnchor.constraint(equalToConstant: 4.fitH),
            viewForSwipe.widthAnchor.constraint(equalToConstant: 41.fitW)
        ])
    }
    
    private func drawPath() {
        path.move(to: CGPoint(x: 0.0, y: 40.fitH))
        
        path.addQuadCurve(to: .init(x: 40.fitH, y: 0.0), controlPoint: .init(x: 0.0, y: 0.0))
        
        path.addLine(to: CGPoint(x: 110.fitW, y: 0.0))
        
        path.addCurve(
            to: .init(x: 184.fitW, y: 12.fitH),
            controlPoint1: .init(x: 127.fitW, y: 0.0),
            controlPoint2: .init(x: 167.fitW, y: 12.fitH)
        )
        
        path.addLine(to: CGPoint(x: 191.fitW, y: 12.fitH))
        
        path.addCurve(
            to: .init(x: 265.fitW, y: 0.0),
            controlPoint1: .init(x: 208.fitW, y: 12.fitH),
            controlPoint2: .init(x: 248.fitW, y: 0.0)
        )
        
        path.addLine(to: .init(x: 335.fitW, y: 0.0))
        
        path.addQuadCurve(to: .init(x: 375.fitW, y: 40.fitH), controlPoint: .init(x: 375.fitW, y: 0.0))
        
        path.close()
    }
}
