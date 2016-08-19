//
//  TraitCollectionHelper.swift
//  Size Classes
//
//  Created by Shreesha on 19/04/16.
//  Copyright © 2016 YML. All rights reserved.
//

import Foundation
import UIKit



extension UITraitCollection  {

    typealias TupleValues = (userinterface : UIUserInterfaceIdiom , displayScale : CGFloat, horizontalSizeClass : UIUserInterfaceSizeClass, verticalSizeClass : UIUserInterfaceSizeClass)

    var tupleValue: TupleValues {
        return (userInterfaceIdiom, displayScale, horizontalSizeClass, verticalSizeClass)
    }
}

public struct TraitVariable<T> {
    public var traitEnvironment: UITraitEnvironment
    public var definition: [(traitCollection: UITraitCollection, value: T)]
    public var defaultValue: T

    public var value: T {
        for (traitCollection, value) in definition {
            if traitEnvironment.traitCollection.containsTraitsInCollection(traitCollection) {
                return value
            }
        }

        return defaultValue
    }
}