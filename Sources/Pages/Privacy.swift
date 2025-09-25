import Foundation
import Ignite

struct Privacy: StaticPage {
    var title = "Privacy"

    var body: some HTML {
		Text("Privacy Policy").font(.title1)
		Text(markdown: "We do not transmit, collect, or *want* any data about you.")
    }
}
