import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"

    var body: some HTML {
		Image("/images/wordmark_1860x860.png", description: "WineTaster - Taste Like a Pro")
			.resizable()
    }
}
