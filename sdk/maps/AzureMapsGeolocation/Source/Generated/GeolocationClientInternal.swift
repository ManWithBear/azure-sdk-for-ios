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
// swiftlint:disable file_length
// swiftlint:disable cyclomatic_complexity
// swiftlint:disable function_body_length
// swiftlint:disable type_body_length

internal final class GeolocationClientInternal: PipelineClient {
    /// Options provided to configure this `GeolocationClientInternal`.
    internal let options: GeolocationClientOptions

    // MARK: Initializers

    /// Create a GeolocationClientInternal client.
    /// - Parameters:
    ///   - endpoint: Base URL for the GeolocationClientInternal.
    ///   - authPolicy: An `Authenticating` policy to use for authenticating client requests.
    ///   - options: Options used to configure the client.
    internal init(
        url: URL? = nil,
        authPolicy: Authenticating,
        withOptions options: GeolocationClientOptions
    ) throws {
        let defaultHost = URL(string: "https://atlas.microsoft.com")
        guard let endpoint = url ?? defaultHost else {
            fatalError("Unable to determine base URL. ")
        }
        self.options = options
        super.init(
            endpoint: endpoint,
            transport: options.transportOptions.transport ?? URLSessionTransport(),
            policies: [
                UserAgentPolicy(for: GeolocationClientInternal.self, telemetryOptions: options.telemetryOptions),
                RequestIdPolicy(),
                AddDatePolicy(),
                authPolicy,
                ContentDecodePolicy(),
                LoggingPolicy(),
                NormalizeETagPolicy()
            ],
            logger: options.logger,
            options: options
        )
    }

    // /// Specifies which account is intended for usage in conjunction with the Azure AD security model.  It represents a unique ID for the Azure Maps account and can be retrieved from the Azure Maps management  plane Account API. To use Azure AD security in Azure Maps see the following [articles](https://aka.ms/amauthdetails) for guidance.
    internal var clientId: String?

    internal lazy var geolocation = Geolocation(client: self)

    // MARK: Client Methods
}
