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

/// Metadata for a tileset in the TileJSON format.
public struct MapTileset: Codable {
    // MARK: Properties

    /// Describes the version of the TileJSON spec that is implemented by this JSON object.
    public let tilejson: String?
    /// A name describing the tileset. The name can contain any legal character. Implementations SHOULD NOT interpret the name as HTML.
    public let name: String?
    /// Text description of the tileset. The description can contain any legal character. Implementations SHOULD NOT interpret the description as HTML.
    public let description: String?
    /// A semver.org style version number for the tiles contained within the tileset. When changes across tiles are introduced, the minor version MUST change.
    public let version: String?
    /// Copyright attribution to be displayed on the map. Implementations MAY decide to treat this as HTML or literal text. For security reasons, make absolutely sure that this field can't be abused as a vector for XSS or beacon tracking.
    public let attribution: String?
    /// A mustache template to be used to format data from grids for interaction.
    public let template: String?
    /// A legend to be displayed with the map. Implementations MAY decide to treat this as HTML or literal text. For security reasons, make absolutely sure that this field can't be abused as a vector for XSS or beacon tracking.
    public let legend: String?
    /// Default: "xyz". Either "xyz" or "tms". Influences the y direction of the tile coordinates. The global-mercator (aka Spherical Mercator) profile is assumed.
    public let scheme: String?
    /// An array of tile endpoints. If multiple endpoints are specified, clients may use any combination of endpoints. All endpoints MUST return the same content for the same URL. The array MUST contain at least one endpoint.
    public let tiles: [String]?
    /// An array of interactivity endpoints.
    public let grids: [String]?
    /// An array of data files in GeoJSON format.
    public let data: [String]?
    /// The minimum zoom level.
    public let minZoom: Int32?
    /// The maximum zoom level.
    public let maxZoom: Int32?
    /// The maximum extent of available map tiles. Bounds MUST define an area covered by all zoom levels. The bounds are represented in WGS:84 latitude and longitude values, in the order left, bottom, right, top. Values may be integers or floating point numbers.
    public let bounds: [Float]?
    /// The default location of the tileset in the form [longitude, latitude, zoom]. The zoom level MUST be between minzoom and maxzoom. Implementations can use this value to set the default location.
    public let center: [Float]?

    // MARK: Initializers

    /// Initialize a `MapTileset` structure.
    /// - Parameters:
    ///   - tilejson: Describes the version of the TileJSON spec that is implemented by this JSON object.
    ///   - name: A name describing the tileset. The name can contain any legal character. Implementations SHOULD NOT interpret the name as HTML.
    ///   - description: Text description of the tileset. The description can contain any legal character. Implementations SHOULD NOT interpret the description as HTML.
    ///   - version: A semver.org style version number for the tiles contained within the tileset. When changes across tiles are introduced, the minor version MUST change.
    ///   - attribution: Copyright attribution to be displayed on the map. Implementations MAY decide to treat this as HTML or literal text. For security reasons, make absolutely sure that this field can't be abused as a vector for XSS or beacon tracking.
    ///   - template: A mustache template to be used to format data from grids for interaction.
    ///   - legend: A legend to be displayed with the map. Implementations MAY decide to treat this as HTML or literal text. For security reasons, make absolutely sure that this field can't be abused as a vector for XSS or beacon tracking.
    ///   - scheme: Default: "xyz". Either "xyz" or "tms". Influences the y direction of the tile coordinates. The global-mercator (aka Spherical Mercator) profile is assumed.
    ///   - tiles: An array of tile endpoints. If multiple endpoints are specified, clients may use any combination of endpoints. All endpoints MUST return the same content for the same URL. The array MUST contain at least one endpoint.
    ///   - grids: An array of interactivity endpoints.
    ///   - data: An array of data files in GeoJSON format.
    ///   - minZoom: The minimum zoom level.
    ///   - maxZoom: The maximum zoom level.
    ///   - bounds: The maximum extent of available map tiles. Bounds MUST define an area covered by all zoom levels. The bounds are represented in WGS:84 latitude and longitude values, in the order left, bottom, right, top. Values may be integers or floating point numbers.
    ///   - center: The default location of the tileset in the form [longitude, latitude, zoom]. The zoom level MUST be between minzoom and maxzoom. Implementations can use this value to set the default location.
    public init(
        tilejson: String? = nil, name: String? = nil, description: String? = nil, version: String? = nil,
        attribution: String? = nil, template: String? = nil, legend: String? = nil, scheme: String? = nil,
        tiles: [String]? = nil, grids: [String]? = nil, data: [String]? = nil, minZoom: Int32? = nil,
        maxZoom: Int32? = nil, bounds: [Float]? = nil, center: [Float]? = nil
    ) {
        self.tilejson = tilejson
        self.name = name
        self.description = description
        self.version = version
        self.attribution = attribution
        self.template = template
        self.legend = legend
        self.scheme = scheme
        self.tiles = tiles
        self.grids = grids
        self.data = data
        self.minZoom = minZoom
        self.maxZoom = maxZoom
        self.bounds = bounds
        self.center = center
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case tilejson = "tilejson"
        case name = "name"
        case description = "description"
        case version = "version"
        case attribution = "attribution"
        case template = "template"
        case legend = "legend"
        case scheme = "scheme"
        case tiles = "tiles"
        case grids = "grids"
        case data = "data"
        case minZoom = "minzoom"
        case maxZoom = "maxzoom"
        case bounds = "bounds"
        case center = "center"
    }

    /// Initialize a `MapTileset` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.tilejson = try? container.decode(String.self, forKey: .tilejson)
        self.name = try? container.decode(String.self, forKey: .name)
        self.description = try? container.decode(String.self, forKey: .description)
        self.version = try? container.decode(String.self, forKey: .version)
        self.attribution = try? container.decode(String.self, forKey: .attribution)
        self.template = try? container.decode(String.self, forKey: .template)
        self.legend = try? container.decode(String.self, forKey: .legend)
        self.scheme = try? container.decode(String.self, forKey: .scheme)
        self.tiles = try? container.decode([String].self, forKey: .tiles)
        self.grids = try? container.decode([String].self, forKey: .grids)
        self.data = try? container.decode([String].self, forKey: .data)
        self.minZoom = try? container.decode(Int32.self, forKey: .minZoom)
        self.maxZoom = try? container.decode(Int32.self, forKey: .maxZoom)
        self.bounds = try? container.decode([Float].self, forKey: .bounds)
        self.center = try? container.decode([Float].self, forKey: .center)
    }

    /// Encode a `MapTileset` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if tilejson != nil { try? container.encode(tilejson, forKey: .tilejson) }
        if name != nil { try? container.encode(name, forKey: .name) }
        if description != nil { try? container.encode(description, forKey: .description) }
        if version != nil { try? container.encode(version, forKey: .version) }
        if attribution != nil { try? container.encode(attribution, forKey: .attribution) }
        if template != nil { try? container.encode(template, forKey: .template) }
        if legend != nil { try? container.encode(legend, forKey: .legend) }
        if scheme != nil { try? container.encode(scheme, forKey: .scheme) }
        if tiles != nil { try? container.encode(tiles, forKey: .tiles) }
        if grids != nil { try? container.encode(grids, forKey: .grids) }
        if data != nil { try? container.encode(data, forKey: .data) }
        if minZoom != nil { try? container.encode(minZoom, forKey: .minZoom) }
        if maxZoom != nil { try? container.encode(maxZoom, forKey: .maxZoom) }
        if bounds != nil { try? container.encode(bounds, forKey: .bounds) }
        if center != nil { try? container.encode(center, forKey: .center) }
    }
}
