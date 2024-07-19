import Foundation
import SwiftUI


public struct MISKewCarouselPageIndicator {
    
    /// - Parameters:
    ///   - activeTint: Color for active indicator dot.
    ///   - default: `.blue.opacity(0.85)`
    var activeColor: Color
    
    /// - Parameters:
    ///   - inactiveTint: Color for inActive indicator dot.
    ///   - default: `.gray.opacity(0.7)`
    var inActiveColor: Color
    
    /// - Parameters:
    ///   - opacityEffect: opacity change while changing indicators position
    var opacityEffect: Bool
    
    /// - Parameters:
    ///   - clipEdges: edge cliping while changing indicators position
    var clipEdges: Bool
    
    public init(
        activeTint: Color = .blue.opacity(0.85),
        inactiveTint: Color = .gray.opacity(0.7),
        opacityEffect: Bool = true,
        clipEdges: Bool = true
    ) {
        self.activeColor = activeTint
        self.inActiveColor = inactiveTint
        self.opacityEffect = opacityEffect
        self.clipEdges = clipEdges
    }
}

public struct MICarouselItemStyle {
    
    /// - Parameters:
    ///   - color: Shadow color of card view.
    ///   - default: `.blue.opacity(0.5)`
    var color: Color
    
    /// - Parameters:
    ///   - shadowRadius: `CGFLoat` type to make shadow radius of card layout.
    ///   - default: `10.0`
    var shadowRadius: CGFloat
    
    /// - Parameters:
    ///   - offSetX: `CGFLoat` type to apply the radius to card's X position.
    ///   - default: `10.0`
    var offSetX: CGFloat
    
    /// - Parameters:
    ///   - offSetY: `CGFLoat` type to apply the radius to card's Y position.
    ///   - default: `10.0`
    var offSetY: CGFloat
    
    /// - Parameters:
    ///   - cornerRadius: `CGFLoat` type to make corner radius of card layout.
    ///   - default: `10.0`
    var cornerRadius: CGFloat
    
    public init(
        color: Color = .black.opacity(0.5),
        radius: CGFloat = 10.0,
        offSetX: CGFloat = 0.0,
        offSetY: CGFloat = 10.0,
        cornerRadius: CGFloat = 10.0
    ) {
        self.color = color
        self.shadowRadius = radius
        self.offSetX = offSetX
        self.offSetY = offSetY
        self.cornerRadius = cornerRadius
    }
}


public struct MICarouselConfig {
    
    /// - Parameters:
    ///   - cardSpacing: `CGFLoat` type to apply space between cards.
    ///   - default: `15.0`
    var cardSpacing: CGFloat
    
    /// - Parameters:
    ///   - cardShadow: `MIScrollCardStyle` type to configure shadow of the card.
    var cardShadow: MICarouselItemStyle
    
    /// - Parameters:
    ///   - indicator: `MISKewCarouselPageIndicator` type to configure page indicator style.
    var indicator: MISKewCarouselPageIndicator
    
    /// - Parameters:
    ///   - cardSkew: `CGFLoat` type to apply skew 3D effect of card item which are at the edge of screen at left and right side.
    ///   - default: `-35.0`
    var cardSkew: CGFloat
    
    /// - Parameters:
    ///   - innerPadding: `CGFLoat` type to apply padding between card and its inner content layout.
    ///   - default: `5.0`
    var innerPadding: CGFloat
    
    
    /// - Parameters:
    ///   - cardBackground: `Color` type to apply background color to the card.
    ///   - default: `.white`
    var cardBackground: Color
    
    /// - Parameters:
    ///   - containerBackground: `Color` type to apply background color to the container.
    ///   - default: `.clear`
    var containerBackground: Color
    
    public init(cardSpacing: CGFloat = 15.0,
                cardShadow: MICarouselItemStyle = MICarouselItemStyle(),
                indicator: MISKewCarouselPageIndicator = MISKewCarouselPageIndicator(),
                cardSkew: CGFloat = -35.0,
                innerPadding: CGFloat = 5.0,
                cardBackground: Color = .white,
                containerBackground: Color = .clear
    ) {
        self.cardSpacing = cardSpacing
        self.cardShadow = cardShadow
        self.indicator = indicator
        self.cardSkew = cardSkew
        self.innerPadding = innerPadding
        self.cardBackground = cardBackground
        self.containerBackground = containerBackground
    }
}
