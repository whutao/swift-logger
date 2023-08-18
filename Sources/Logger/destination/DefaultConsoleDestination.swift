//
//  Created by Roman Nabiullin
//
//  Copyright (c) 2023 - Present
//
//  All Rights Reserved.
//

import Foundation

// MARK: - Format

/// Default console destination that print log strings.
public final class DefaultConsoleDestination: LoggerDestinationProtocol {

	// MARK: Expsoed properties

	public var outputLevel: LogLevel = .verbose

	public init() {

	}

	// MARK: Exposed methods

	public func process(string: String, level: LogLevel) {
		print(string)
	}

}
