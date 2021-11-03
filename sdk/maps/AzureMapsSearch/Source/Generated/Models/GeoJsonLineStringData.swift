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

public struct GeoJsonLineStringData: Codable {
    // MARK: Properties

    /// Coordinates for the `GeoJson LineString` geometry.
    public let coordinates: [[Double]]

    // MARK: Initializers

    /// Initialize a `GeoJsonLineStringData` structure.
    /// - Parameters:
    ///   - coordinates: Coordinates for the `GeoJson LineString` geometry.
    public init(
        coordinates: [[Double]]
    ) {
        self.coordinates = coordinates
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case coordinates = "coordinates"
    }

    /// Initialize a `GeoJsonLineStringData` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.coordinates = try container.decode([[Double]].self, forKey: .coordinates)
    }

    /// Encode a `GeoJsonLineStringData` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(coordinates, forKey: .coordinates)
    }
}
