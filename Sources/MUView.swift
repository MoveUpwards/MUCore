//
//  MUView.swift
//  Sejima
//
//  Created by Damien Noël Dubuisson on 21/02/2019.
//  Copyright © 2019 Damien Noël Dubuisson. All rights reserved.
//

import UIKit

extension UIView {
    private func applyAutolayout(on view: UIView, top: CGFloat?, height: CGFloat?, leading: CGFloat?, width: CGFloat?) {
        view.translatesAutoresizingMaskIntoConstraints = false

        if let top = top {
            view.topAnchor.constraint(equalTo: topAnchor, constant: top).isActive = true
        }
        if let height = height {
            view.heightAnchor.constraint(equalTo: heightAnchor, multiplier: height).isActive = true
        }
        if let leading = leading {
            view.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leading).isActive = true
        }
        if let width = width {
            view.widthAnchor.constraint(equalTo: widthAnchor, multiplier: width).isActive = true
        }
    }

    /// Adds a view to the end of the receiver’s list of subviews
    /// and then apply autolayout contraints to fit the current view.
    public func addAutolayoutSubview(_ view: UIView,
                                     top: CGFloat? = 0.0,
                                     height: CGFloat? = 1.0,
                                     leading: CGFloat? = 0.0,
                                     width: CGFloat? = 1.0) {
        addSubview(view)
        applyAutolayout(on: view, top: top, height: height, leading: leading, width: width)
    }

    /// Inserts a view below another view in the view hierarchy
    /// and then apply autolayout contraints to fit the current view.
    public func insertAutolayoutSubview(_ view: UIView,
                                        belowSubview siblingSubview: UIView,
                                        top: CGFloat? = 0.0,
                                        height: CGFloat? = 1.0,
                                        leading: CGFloat? = 0.0,
                                        width: CGFloat? = 1.0) {
        insertSubview(view, belowSubview: siblingSubview)
        applyAutolayout(on: view, top: top, height: height, leading: leading, width: width)
    }

    /// Inserts a view above another view in the view hierarchy
    /// and then apply autolayout contraints to fit the current view.
    public func insertAutolayoutSubview(_ view: UIView,
                                        aboveSubview siblingSubview: UIView,
                                        top: CGFloat? = 0.0,
                                        height: CGFloat? = 1.0,
                                        leading: CGFloat? = 0.0,
                                        width: CGFloat? = 1.0) {
        insertSubview(view, aboveSubview: siblingSubview)
        applyAutolayout(on: view, top: top, height: height, leading: leading, width: width)
    }

    /// Add gradient colors in sublayer at index 0.
    public func addGradient(_ colors: [CGColor]) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = colors
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1.0)
        layer.insertSublayer(gradientLayer, at: 0)
    }
}
