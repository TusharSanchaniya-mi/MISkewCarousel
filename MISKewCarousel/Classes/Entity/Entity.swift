import Foundation
import SwiftUI


struct MICarouselPageIndicator {
    
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
    
    init(
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

struct MICarouselItemStyle {
    
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
    
    init(
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


struct MICarouselConfig {
    
    /// - Parameters:
    ///   - cardSpacing: `CGFLoat` type to apply space between cards.
    ///   - default: `15.0`
    var cardSpacing: CGFloat
    
    /// - Parameters:
    ///   - cardShadow: `MIScrollCardStyle` type to configure shadow of the card..
    var cardShadow: MICarouselItemStyle
    var indicator: MICarouselPageIndicator
    var cardSkew: CGFloat
    var innerPadding: CGFloat
    
    init(cardSpacing: CGFloat = 15.0,
         cardShadow: MICarouselItemStyle = MICarouselItemStyle(),
         indicator: MICarouselPageIndicator = MICarouselPageIndicator(),
         cardSkew: CGFloat = -35.0,
         innerPadding: CGFloat = 5.0
    ) {
        self.cardSpacing = cardSpacing
        self.cardShadow = cardShadow
        self.indicator = indicator
        self.cardSkew = cardSkew
        self.innerPadding = innerPadding
    }
}