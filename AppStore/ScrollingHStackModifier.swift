//
//  ScrollingStackModifier.swift
//  ScrollView_Tests
//
//  Created by Jean-Marc Boullianne on 8/7/20. [https://levelup.gitconnected.com/snap-to-item-scrolling-debccdcbb22f]
//
import SwiftUI

struct ScrollingHStackModifier: ViewModifier {
    
    @State private var scrollOffset: CGFloat
    @State private var dragOffset: CGFloat
    
    let items: Int
    let itemWidth: CGFloat
    let itemSpacing: CGFloat
    let contentWidth: CGFloat
    let snapPointSpacing: CGFloat
    let leadingPageOffset: CGFloat
    
    init(items: Int, itemWidth: CGFloat, itemSpacing: CGFloat) {
        self.items = items
        self.itemWidth = itemWidth
        self.itemSpacing = itemSpacing
        self.snapPointSpacing = self.itemWidth + self.itemSpacing
        self.leadingPageOffset = self.snapPointSpacing * CGFloat(self.items - 1) / 2
        
        // Calculate Total Content Width
        self.contentWidth = CGFloat(items) * itemWidth + CGFloat(items - 1) * itemSpacing
        let screenWidth = UIScreen.main.bounds.width
        
        // Set Initial Offset to first Item
        let initialOffset = (contentWidth/2.0) - (screenWidth/2.0) + ((screenWidth - itemWidth) / 2.0)
        
        self._scrollOffset = State(initialValue: initialOffset)
        self._dragOffset = State(initialValue: 0)
    }
    
    func body(content: Content) -> some View {
        content
            .offset(x: scrollOffset + dragOffset, y: 0)
            .gesture(DragGesture()
                .onChanged({ event in
                    dragOffset = event.translation.width
                    print("scrollOffset = \(scrollOffset), dragOffset = \(dragOffset)")
                })
                .onEnded({ event in
                    
                    let predictedOffset = scrollOffset + event.predictedEndTranslation.width
                    
                    // Scroll to where user dragged
                    scrollOffset += event.translation.width
                    dragOffset = 0
                    
                    // Now calculate which item to snap to
                    let screenWidth = UIScreen.main.bounds.width
                    
                    // Calculate the pages we are between to get potential targets
                    let currentIndex = (leadingPageOffset - scrollOffset) / (snapPointSpacing)

                    let lowerBound = max(currentIndex.rounded(.down), 0)
                    let upperBound = min(currentIndex.rounded(.up), CGFloat(items) - 1)

                    // Calculate predicted destnation
                    var predictedIndex = (leadingPageOffset - predictedOffset) / (snapPointSpacing)
                    
                    print("screenWidth = \(screenWidth), itemWidth = \(itemWidth), itemSpacing = \(itemSpacing)")
                    print("scrollOffset = \(scrollOffset), currentIndex = \(currentIndex), predictedIndex = \(predictedIndex)")
                    
                    predictedIndex.round(.toNearestOrEven)
                    
                    predictedIndex = min(predictedIndex, upperBound)
                    predictedIndex = max(predictedIndex, lowerBound)
                    
                    let newOffset = self.leadingPageOffset - (predictedIndex * snapPointSpacing)
                    
                    // Animate snapping
                    withAnimation(.interactiveSpring()) {
                        scrollOffset = newOffset
                    }
                    
                })
            )
    }
}
