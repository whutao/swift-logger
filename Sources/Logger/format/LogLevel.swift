//
//  Created by Roman Nabiullin
//
//  Copyright (c) 2023 - Present
//
//  All Rights Reserved.
//

import Foundation

// MARK: - Format

/// Log levels ordered according to their prioriry.
///
/// The order is *verbose -> info -> debug -> warning -> error -> severe*.
public enum LogLevel: UInt8, Equatable, Comparable {

	// MARK: Exposed properties

	public var name: String {
		switch self {
		case .verbose:
			return "verbose"
		case .info:
			return "info"
		case .debug:
			return "debug"
		case .warning:
			return "warning"
		case .error:
			return "error"
		case .severe:
			return "severe"
		}
	}

	public var symbol: String {
		switch self {
		case .verbose:
			return "🔈"
		case .info:
			return "ℹ️"
		case .debug:
			return "🪲"
		case .warning:
			return "⚠️"
		case .error:
			return "⛔️"
		case .severe:
			return "🔥"
		}
	}

	// MARK: Cases

	case verbose = 0

	case info = 1

	case debug = 2

	case warning = 3

	case error = 4

	case severe = 5

	// MARK: Exposed methods

	public static func < (lhs: LogLevel, rhs: LogLevel) -> Bool {
		return lhs.rawValue < rhs.rawValue
	}

}
