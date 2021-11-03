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

/// This object is returned from a successful Weather Along Route.
public struct WeatherAlongRouteResponse: Codable {
    // MARK: Properties

    /// Short summary of the weather along the route.
    public let summary: WeatherAlongRouteSummary?
    /// Data for each waypoint returned in the same order as specified in the request.
    public let waypoints: [WaypointForecast]?

    // MARK: Initializers

    /// Initialize a `WeatherAlongRouteResponse` structure.
    /// - Parameters:
    ///   - summary: Short summary of the weather along the route.
    ///   - waypoints: Data for each waypoint returned in the same order as specified in the request.
    public init(
        summary: WeatherAlongRouteSummary? = nil, waypoints: [WaypointForecast]? = nil
    ) {
        self.summary = summary
        self.waypoints = waypoints
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case summary = "summary"
        case waypoints = "waypoints"
    }

    /// Initialize a `WeatherAlongRouteResponse` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.summary = try? container.decode(WeatherAlongRouteSummary.self, forKey: .summary)
        self.waypoints = try? container.decode([WaypointForecast].self, forKey: .waypoints)
    }

    /// Encode a `WeatherAlongRouteResponse` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if summary != nil { try? container.encode(summary, forKey: .summary) }
        if waypoints != nil { try? container.encode(waypoints, forKey: .waypoints) }
    }
}
