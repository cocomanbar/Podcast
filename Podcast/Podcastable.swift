//
//  Podcastable.swift
//  Podcast
//
//  Created by tanxl on 2024/6/17.
//

import Foundation
import SwiftUI

public protocol PodcastCompatible: AnyObject { }

extension PodcastCompatible {
   public var pod: PodcastWrapper<Self> {
       get { return PodcastWrapper(self) }
       set { }
   }
}

public struct PodcastWrapper<Base> {
   public let base: Base
   public init(_ base: Base) {
       self.base = base
   }
}
