import SwiftUI

struct PagingIndicator: View {
    
    /// - Parameters:
    ///   - activeTint: Color for active indicator dot.
    var activeTint: Color = .blue.opacity(0.85)
    
    /// - Parameters:
    ///   - inactiveTint: Color for inActive indicator dot.
    var inactiveTint: Color = .gray.opacity(0.7)
    
    /// - Parameters:
    ///   - opacityEffect: opacity change while changing indicators position
    var opacityEffect: Bool = true
    
    /// - Parameters:
    ///   - clipEdges: edge cliping while changing indicators position
    var clipEdges: Bool = true
    
    var body: some View {
        let hstackSpacing: CGFloat = 10
        let dotSize: CGFloat = 8
        let spacingAndDotSize = hstackSpacing + dotSize
        
        GeometryReader {
            let width = $0.size.width
            /// ScrollView boounds
            if let scrollViewWidth = $0.bounds(of: .scrollView(axis: .horizontal))?.width,
               scrollViewWidth > 0 {
                
                let minX = $0.frame(in: .scrollView(axis: .horizontal)).minX
                let totalPages = Int(width / scrollViewWidth)
                
                /// Progress
                let freeProgress = -minX / scrollViewWidth
                let clippedProgress = min(max(freeProgress, 0), CGFloat(totalPages - 1))
                let progress = clipEdges ? clippedProgress : freeProgress
                
                /// Indexes
                let activeIndex = Int(progress)
                let nextIndex = Int(progress.rounded(.awayFromZero))
                let indicatorProgress = progress - CGFloat(activeIndex)
                
                /// Indicator width (Current & upcoming)
                let currentPageWidth = spacingAndDotSize - (indicatorProgress * spacingAndDotSize)
                let nextPageWidth = indicatorProgress * spacingAndDotSize
                
                HStack(spacing: hstackSpacing) {
                    ForEach(0..<totalPages, id: \.self) { index in
                        Capsule()
                            .fill(inactiveTint)
                            .frame(width: dotSize + ((activeIndex == index) ? currentPageWidth : (nextIndex == index) ? nextPageWidth : 0),
                                   height: dotSize)
                            .overlay {
                                ZStack {
                                    Capsule()
                                        .fill(inactiveTint)
                                    
                                    Capsule()
                                        .fill(activeTint)
                                        .opacity(opacityEffect ?
                                            (activeIndex == index) ? 1 - indicatorProgress : (nextIndex == index) ? indicatorProgress : 0
                                                 : 1
                                        )
                                }
                            }
                    } //: LOOP DOTS
                } //: HSTACK
                .frame(width: scrollViewWidth)
                .offset(x: -minX)
                .padding(.vertical, 5)
            }
        } //: GEOMETRY
        .frame(height: 30)
    }
}
