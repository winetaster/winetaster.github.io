import Foundation
import Ignite

struct Privacy: StaticPage {
    var title = "Privacy"

    var body: some HTML {
		Text(markdown: "We do not transmit, collect, or *want* any data about you.")
    }
}
