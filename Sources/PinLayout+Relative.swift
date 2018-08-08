//  Copyright (c) 2017 Luc Dion
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

#if os(iOS) || os(tvOS)
    import UIKit
#else
    import AppKit
#endif
    
extension PinLayout {
    
    //
    // above(of ...)
    //
    @discardableResult
    public func above(of relativeView: View) -> PinLayout {
        func context() -> String { return "above(of: \(relativeView))" }
        return above(relativeViews: [relativeView], aligned: nil, context: context)
    }

    @discardableResult
    public func above(of relativeViews: [View]) -> PinLayout {
        func context() -> String { return "above(of: \(relativeViews))" }
        return above(relativeViews: relativeViews, aligned: nil, context: context)
    }

    @discardableResult
    public func above(of relativeView: View, aligned: HorizontalAlign) -> PinLayout {
        func context() -> String { return "above(of: \(relativeView), aligned: \(aligned))" }
        return above(relativeViews: [relativeView], aligned: aligned, context: context)
    }

    @discardableResult
    public func above(of relativeViews: [View], aligned: HorizontalAlign) -> PinLayout {
        func context() -> String { return "above(of: \(relativeViews), aligned: \(aligned))" }
        return above(relativeViews: relativeViews, aligned: aligned, context: context)
    }
    
    //
    // below(of ...)
    //
    @discardableResult
    public func below(of relativeView: View) -> PinLayout {
        func context() -> String { return "below(of: \(relativeView))" }
        return below(relativeViews: [relativeView], aligned: nil, context: context)
    }

    @discardableResult
    public func below(of relativeViews: [View]) -> PinLayout {
        func context() -> String { return "below(of: \(relativeViews))" }
        return below(relativeViews: relativeViews, aligned: nil, context: context)
    }

    @discardableResult
    public func below(of relativeView: View, aligned: HorizontalAlign) -> PinLayout {
        func context() -> String { return "below(of: \(relativeView), aligned: \(aligned))" }
        return below(relativeViews: [relativeView], aligned: aligned, context: context)
    }

    @discardableResult
    public func below(of relativeViews: [View], aligned: HorizontalAlign) -> PinLayout {
        func context() -> String { return "below(of: \(relativeViews), aligned: \(aligned))" }
        return below(relativeViews: relativeViews, aligned: aligned, context: context)
    }
    
    //
    // left(of ...)
    //
    @discardableResult
    public func left(of relativeView: View) -> PinLayout {
        func context() -> String { return "left(of: \(relativeView))" }
        return left(relativeViews: [relativeView], aligned: nil, context: context)
    }

    @discardableResult
    public func left(of relativeViews: [View]) -> PinLayout {
        func context() -> String { return "left(of: \(relativeViews))" }
        return left(relativeViews: relativeViews, aligned: nil, context: context)
    }

    @discardableResult
    public func left(of relativeView: View, aligned: VerticalAlign) -> PinLayout {
        func context() -> String { return "left(of: \(relativeView), aligned: \(aligned))" }
        return left(relativeViews: [relativeView], aligned: aligned, context: context)
    }

    @discardableResult
    public func left(of relativeViews: [View], aligned: VerticalAlign) -> PinLayout {
        func context() -> String { return "left(of: \(relativeViews), aligned: \(aligned))" }
        return left(relativeViews: relativeViews, aligned: aligned, context: context)
    }

    //
    // right(of ...)
    //
    @discardableResult
    public func right(of relativeView: View) -> PinLayout {
        func context() -> String { return "right(of: \(relativeView))" }
        return right(relativeViews: [relativeView], aligned: nil, context: context)
    }

    @discardableResult
    public func right(of relativeViews: [View]) -> PinLayout {
        func context() -> String { return "right(of: \(relativeViews))" }
        return right(relativeViews: relativeViews, aligned: nil, context: context)
    }

    @discardableResult
    public func right(of relativeView: View, aligned: VerticalAlign) -> PinLayout {
        func context() -> String { return "right(of: \(relativeView), aligned: \(aligned))" }
        return right(relativeViews: [relativeView], aligned: aligned, context: context)
    }

    @discardableResult
    public func right(of relativeViews: [View], aligned: VerticalAlign) -> PinLayout {
        func context() -> String { return "right(of: \(relativeViews), aligned: \(aligned))" }
        return right(relativeViews: relativeViews, aligned: aligned, context: context)
    }

    @discardableResult
    public func before(of relativeView: View) -> PinLayout {
        func context() -> String { return "before(of: \(relativeView))" }
        if isLTR() {
            return left(relativeViews: [relativeView], aligned: nil, context: context)
        } else {
            return right(relativeViews: [relativeView], aligned: nil, context: context)
        }
    }

    @discardableResult
    public func before(of relativeViews: [View]) -> PinLayout {
        func context() -> String { return "before(of: \(relativeViews))" }
        if isLTR() {
            return left(relativeViews: relativeViews, aligned: nil, context: context)
        } else {
            return right(relativeViews: relativeViews, aligned: nil, context: context)
        }
    }

    @discardableResult
    public func before(of relativeView: View, aligned: VerticalAlign) -> PinLayout {
        func context() -> String { return "before(of: \(relativeView), aligned: \(aligned))" }
        if isLTR() {
            return left(relativeViews: [relativeView], aligned: aligned, context: context)
        } else {
            return right(relativeViews: [relativeView], aligned: aligned, context: context)
        }
    }

    @discardableResult
    public func before(of relativeViews: [View], aligned: VerticalAlign) -> PinLayout {
        func context() -> String { return "before(of: \(relativeViews), aligned: \(aligned))" }
        if isLTR() {
            return left(relativeViews: relativeViews, aligned: aligned, context: context)
        } else {
            return right(relativeViews: relativeViews, aligned: aligned, context: context)
        }
    }

    @discardableResult
    public func after(of relativeView: View) -> PinLayout {
        func context() -> String { return "after(of: \(relativeView))" }
        if isLTR() {
            return right(relativeViews: [relativeView], aligned: nil, context: context)
        } else {
            return left(relativeViews: [relativeView], aligned: nil, context: context)
        }
    }

    @discardableResult
    public func after(of relativeViews: [View]) -> PinLayout {
        func context() -> String { return "after(of: \(relativeViews))" }
        if isLTR() {
            return right(relativeViews: relativeViews, aligned: nil, context: context)
        } else {
            return left(relativeViews: relativeViews, aligned: nil, context: context)
        }
    }

    @discardableResult
    public func after(of relativeView: View, aligned: VerticalAlign) -> PinLayout {
        func context() -> String { return "after(of: \(relativeView))" }
        if isLTR() {
            return right(relativeViews: [relativeView], aligned: aligned, context: context)
        } else {
            return left(relativeViews: [relativeView], aligned: aligned, context: context)
        }
    }

    @discardableResult
    public func after(of relativeViews: [View], aligned: VerticalAlign) -> PinLayout {
        func context() -> String { return "after(of: \(relativeViews), aligned: \(aligned))" }
        if isLTR() {
            return right(relativeViews: relativeViews, aligned: aligned, context: context)
        } else {
            return left(relativeViews: relativeViews, aligned: aligned, context: context)
        }
    }
}

// MARK: private
extension PinLayout {
    private func above(relativeViews: [View], aligned: HorizontalAlign?, context: Context) -> PinLayout {
        guard let relativeViews = validateRelativeViews(relativeViews, context: context) else { return self }
        
        let anchors: [Anchor]
        if let aligned = aligned {
            switch aligned {
            case .left:   anchors = relativeViews.map({ $0.anchor.topLeft })
            case .center: anchors = relativeViews.map({ $0.anchor.topCenter })
            case .right:  anchors = relativeViews.map({ $0.anchor.topRight })
            case .start:  anchors = isLTR() ? relativeViews.map({ $0.anchor.topLeft }) : relativeViews.map({ $0.anchor.topRight })
            case .end:    anchors = isLTR() ? relativeViews.map({ $0.anchor.topRight }) : relativeViews.map({ $0.anchor.topLeft })
            }
        } else {
            anchors = relativeViews.map({ $0.anchor.topLeft })
        }
        
        if let coordinatesList = computeCoordinates(forAnchors: anchors, context) {
            setBottom(getTopMostCoordinate(list: coordinatesList), context)
            applyHorizontalAlignment(aligned, coordinatesList: coordinatesList, context: context)
        }
        return self
    }

    private func below(relativeViews: [View], aligned: HorizontalAlign?, context: Context) -> PinLayout {
        guard let relativeViews = validateRelativeViews(relativeViews, context: context) else { return self }
        
        let anchors: [Anchor]
        if let aligned = aligned {
            switch aligned {
            case .left:   anchors = relativeViews.map({ $0.anchor.bottomLeft })
            case .center: anchors = relativeViews.map({ $0.anchor.bottomCenter })
            case .right:  anchors = relativeViews.map({ $0.anchor.bottomRight })
            case .start:  anchors = isLTR() ? relativeViews.map({ $0.anchor.bottomLeft }) : relativeViews.map({ $0.anchor.bottomRight })
            case .end:    anchors = isLTR() ? relativeViews.map({ $0.anchor.bottomRight }) : relativeViews.map({ $0.anchor.bottomLeft })
            }
        } else {
            anchors = relativeViews.map({ $0.anchor.bottomLeft })
        }
        
        if let coordinatesList = computeCoordinates(forAnchors: anchors, context) {
            setTop(getBottomMostCoordinate(list: coordinatesList), context)
            applyHorizontalAlignment(aligned, coordinatesList: coordinatesList, context: context)
        }
        return self
    }
    
    private func left(relativeViews: [View], aligned: VerticalAlign?, context: Context) -> PinLayout {
        guard let relativeViews = validateRelativeViews(relativeViews, context: context) else { return self }
        
        let anchors: [Anchor]
        if let aligned = aligned {
            switch aligned {
            case .top:    anchors = relativeViews.map({ $0.anchor.topLeft })
            case .center: anchors = relativeViews.map({ $0.anchor.centerLeft })
            case .bottom: anchors = relativeViews.map({ $0.anchor.bottomLeft })
            }
        } else {
            anchors = relativeViews.map({ $0.anchor.topLeft })
        }
        
        if let coordinatesList = computeCoordinates(forAnchors: anchors, context) {
            setRight(getLeftMostCoordinate(list: coordinatesList), context)
            applyVerticalAlignment(aligned, coordinatesList: coordinatesList, context: context)
        }
        return self
    }
    
    private func right(relativeViews: [View], aligned: VerticalAlign?, context: Context) -> PinLayout {
        guard let relativeViews = validateRelativeViews(relativeViews, context: context) else { return self }
        
        let anchors: [Anchor]
        if let aligned = aligned {
            switch aligned {
            case .top:    anchors = relativeViews.map({ $0.anchor.topRight })
            case .center: anchors = relativeViews.map({ $0.anchor.centerRight })
            case .bottom: anchors = relativeViews.map({ $0.anchor.bottomRight })
            }
        } else {
            anchors = relativeViews.map({ $0.anchor.topRight })
        }
        
        if let coordinatesList = computeCoordinates(forAnchors: anchors, context) {
            setLeft(getRightMostCoordinate(list: coordinatesList), context)
            applyVerticalAlignment(aligned, coordinatesList: coordinatesList, context: context)
        }
        return self
    }
    
    private func applyHorizontalAlignment(_ aligned: HorizontalAlign?, coordinatesList: [CGPoint], context: Context) {
        if let aligned = aligned {
            switch aligned {
            case .left:   setLeft(getLeftMostCoordinate(list: coordinatesList), context)
            case .center: setHorizontalCenter(getAverageHCenterCoordinate(list: coordinatesList), context)
            case .right:  setRight(getRightMostCoordinate(list: coordinatesList), context)
                
            case .start:
                isLTR() ? setLeft(getLeftMostCoordinate(list: coordinatesList), context) :
                          setRight(getRightMostCoordinate(list: coordinatesList), context)
            case .end:
                isLTR() ? setRight(getRightMostCoordinate(list: coordinatesList), context) :
                          setLeft(getLeftMostCoordinate(list: coordinatesList), context)
            }
        }
    }
    
    private func applyVerticalAlignment(_ aligned: VerticalAlign?, coordinatesList: [CGPoint], context: Context) {
        if let aligned = aligned {
            switch aligned {
            case .top:    setTop(getTopMostCoordinate(list: coordinatesList), context)
            case .center: setVerticalCenter(getAverageVCenterCoordinate(list: coordinatesList), context)
            case .bottom: setBottom(getBottomMostCoordinate(list: coordinatesList), context)
            }
        }
    }
    
    private func getTopMostCoordinate(list: [CGPoint]) -> CGFloat {
        assert(list.count > 0)
        let firstCoordinate = list[0].y
        return list.dropFirst().reduce(firstCoordinate, { (bestCoordinate, otherCoordinates) -> CGFloat in
            return (otherCoordinates.y < bestCoordinate) ? otherCoordinates.y : bestCoordinate
        })
    }
    
    private func getBottomMostCoordinate(list: [CGPoint]) -> CGFloat {
        assert(list.count > 0)
        let firstCoordinate = list[0].y
        return list.dropFirst().reduce(firstCoordinate, { (bestCoordinate, otherCoordinates) -> CGFloat in
            return (otherCoordinates.y > bestCoordinate) ? otherCoordinates.y : bestCoordinate
        })
    }
    
    private func getLeftMostCoordinate(list: [CGPoint]) -> CGFloat {
        assert(list.count > 0)
        let firstCoordinate = list[0].x
        return list.dropFirst().reduce(firstCoordinate, { (bestCoordinate, otherCoordinates) -> CGFloat in
            return (otherCoordinates.x < bestCoordinate) ? otherCoordinates.x : bestCoordinate
        })
    }
    
    private func getRightMostCoordinate(list: [CGPoint]) -> CGFloat {
        assert(list.count > 0)
        let firstCoordinate = list[0].x
        return list.dropFirst().reduce(firstCoordinate, { (bestCoordinate, otherCoordinates) -> CGFloat in
            return (otherCoordinates.x > bestCoordinate) ? otherCoordinates.x : bestCoordinate
        })
    }
    
    private func getAverageHCenterCoordinate(list: [CGPoint]) -> CGFloat {
        assert(list.count > 0)
        let sum = list.reduce(0, { (result, point) -> CGFloat in
            return result + point.x
        })
        return sum / CGFloat(list.count)
    }
    
    private func getAverageVCenterCoordinate(list: [CGPoint]) -> CGFloat {
        assert(list.count > 0)
        let sum = list.reduce(0, { (result, point) -> CGFloat in
            return result + point.y
        })
        return sum / CGFloat(list.count)
    }
    
    private func validateRelativeViews(_ relativeViews: [View], context: Context) -> [View]? {
        guard let _ = layoutSuperview(context) else { return nil }
        guard relativeViews.count > 0 else {
            warnWontBeApplied("At least one view must be visible (i.e. UIView.isHidden != true) ", context)
            return nil
        }
        
        return relativeViews
    }
}
