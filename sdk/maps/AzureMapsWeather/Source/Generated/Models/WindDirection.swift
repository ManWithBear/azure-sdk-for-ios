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

/// Wind direction
public struct WindDirection: Codable {
    // MARK: Properties

    /// Wind direction in Azimuth degrees,  starting at true North and continuing in clockwise direction. North is 0 degrees, east is 90 degrees, south is 180 degrees, west is 270 degrees. Possible values 0-359.
    public let degrees: Int32?
    /// Direction abbreviation in the specified language.
    public let description: String?

    // MARK: Initializers

    /// Initialize a `WindDirection` structure.
    /// - Parameters:
    ///   - degrees: Wind direction in Azimuth degrees,  starting at true North and continuing in clockwise direction. North is 0 degrees, east is 90 degrees, south is 180 degrees, west is 270 degrees. Possible values 0-359.
    ///   - description: Direction abbreviation in the specified language.
    public init(
        degrees: Int32? = nil, description: String? = nil
    ) {
        self.degrees = degrees
        self.description = description
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case degrees = "degrees"
        case description = "localizedDescription"
    }

    /// Initialize a `WindDirection` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.degrees = try? container.decode(Int32.self, forKey: .degrees)
        self.description = try? container.decode(String.self, forKey: .description)
    }

    /// Encode a `WindDirection` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if degrees != nil { try? container.encode(degrees, forKey: .degrees) }
        if description != nil { try? container.encode(description, forKey: .description) }
    }
}
