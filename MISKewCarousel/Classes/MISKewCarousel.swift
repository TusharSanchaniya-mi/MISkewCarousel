import SwiftUI

struct MISKewCarousel<Content: View, Data: RandomAccessCollection>: View where Data.Element: Identifiable {
    
    /// - Parameters:
    ///   - currentPage: indicates current page.
    ///   - Default: `0`
    @State var currentPage: Int = 0
    
    /// - Parameters:
    ///   - configuration: to configure and modify card and list layout style.
    @State var configuration: MICarouselConfig = MICarouselConfig()
    
    /// - Parameters:
    ///   - collection: Collection of data to render in card layout
    @Binding var collection: Data
    
    /// - Parameters:
    ///   - content: its @ViewBuilder type which shows in card layout.
    let content: (Data.Element) -> Content
    
    @State fileprivate var numberOfItemsShown: Int = 3
    
    init(
        currentPage: Int = 0,
        configuration: MICarouselConfig = MICarouselConfig(),
        collection: Binding<Data>,
        @ViewBuilder content: @escaping (Data.Element) -> Content
    ) {
        self.currentPage = currentPage
        self.configuration = configuration
        self._collection = collection
        self.content = content
    }
    
    /// Round up to ensure all items are included
    fileprivate func pageCount() -> Int {
        //(self.collection.count + 2) / numberOfItemsShown
        (self.collection.count + numberOfItemsShown - 1) / numberOfItemsShown
    }
    
    //Make card view in skew form
    fileprivate func angle(for midX: CGFloat, in geoWidth: CGFloat) -> Double {
        let center = geoWidth / 2
        let offset = midX - center
        let maxOffset = geoWidth / 2
        let percentage = offset / maxOffset
        let maxAngle: Double = configuration.cardSkew
        return Double(percentage) * maxAngle
    }
    
    var body: some View {
        VStack {
            GeometryReader { geometry in
                let geoWidth = geometry.size.width
                let geoHeight = geometry.size.height
                
                ScrollView(.horizontal) {
                    LazyHStack(spacing: 0) {
                        ForEach(0..<pageCount(), id: \.self) { index in
                            HStack(spacing: configuration.cardSpacing) {
                                ForEach(0..<numberOfItemsShown, id: \.self) { subIndex in
                                    
                                    let itemIndex = index * numberOfItemsShown + subIndex

                                    if itemIndex < self.collection.count {
                                        GeometryReader { itemGeometry in
                                            let currentItem = collection[collection.index(collection.startIndex, offsetBy: itemIndex)]
                                            
                                            RoundedRectangle(cornerRadius: configuration.cardShadow.cornerRadius)
                                                .fill(Color.cyan)
                                                .frame(width: (geoWidth / 3.0) - 30.0, height: geoWidth / 2.5 - 10.0)
                                                .overlay {
                                                    VStack {
                                                        content(currentItem)
                                                    }
                                                    .padding(5)
                                                }
                                                .clipped()
                                                .rotation3DEffect(
                                                    .degrees(self.angle(for: itemGeometry.frame(in: .global).midX, in: geoWidth)),
                                                    axis: (x: 0, y: 1, z: 0)
                                                )
                                                .shadow(color: configuration.cardShadow.color, radius: configuration.cardShadow.shadowRadius, x: configuration.cardShadow.offSetX, y: configuration.cardShadow.offSetY)
                                        }
                                        .frame(width: (geoWidth / 3.0) - 30.0, height: geoWidth / 3.0 - 10.0)
                                    }
                                }
                            }
                            .frame(width: geometry.size.width, height: (geometry.size.width / 3.0) - 30.0)
                        }
                    }
                    .scrollTargetLayout()
                    .overlay(alignment: .bottom) {
                        PagingIndicator(
                            activeTint: configuration.indicator.activeColor,
                            inactiveTint: configuration.indicator.inActiveColor,
                            opacityEffect: configuration.indicator.opacityEffect,
                            clipEdges: configuration.indicator.clipEdges
                        )
                    }
                    
                }
                .frame(height: geoHeight / 2.5)
                .scrollIndicators(.hidden)
                .safeAreaPadding(.vertical, 15.0)
                .scrollTargetBehavior(.viewAligned)
                .onChange(of: currentPage) { _ , newValue in
                    withAnimation {
                        currentPage = newValue
                    }
                }
            }
            .background(.white.opacity(0.5))
            
            
        }
        
    }
}

#Preview {
    SkewDemoApp()
}
