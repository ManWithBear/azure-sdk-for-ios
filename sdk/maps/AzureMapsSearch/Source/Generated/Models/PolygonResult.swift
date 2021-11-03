// --------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for
// license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// --------------------------------------------------------------------------

import AzureCore
import Foundation
// swiftlint:disable superfluous_disable_command
// swiftlint:disable identifier_name
// swiftlint:disable line_length
// swiftlint:disable cyclomatic_complexity

/// This object is returned from a successful Search Polygon call
public struct PolygonResult: Codable {
    // MARK: Properties

    /// Results array
    public let polygons: [Polygon]?

    // MARK: Initializers

    /// Initialize a `PolygonResult` structure.
    /// - Parameters:
    ///   - polygons: Results array
    public init(
        polygons: [Polygon]? = nil
    ) {
        self.polygons = polygons
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case polygons = "additionalData"
    }

    /// Initialize a `PolygonResult` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.polygons = try? container.decode([Polygon].self, forKey: .polygons)
    }

    /// Encode a `PolygonResult` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if polygons != nil { try? container.encode(polygons, forKey: .polygons) }
    }
}
