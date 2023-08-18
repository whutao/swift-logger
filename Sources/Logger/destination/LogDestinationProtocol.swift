//
//  Created by Roman Nabiullin
//
//  Copyright (c) 2023 - Present
//
//  All Rights Reserved.
//

import Foundation

// MARK: - Destination

/// Interface for logger destination.
public protocol LoggerDestinationProtocol {

	// MARK: Properties

	/// Log level at after which a destination accepts messages.
	var outputLevel: LogLevel { get set }

	// MARK: Methods

	/// Sends a log message to the destination.
	func process(string: String, level: LogLevel)

}
