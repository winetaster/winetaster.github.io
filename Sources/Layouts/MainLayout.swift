import Foundation
import Ignite

struct MainLayout: Layout {
    var body: some Document {
		Head {
			Script(file: "/js/gtm_head.js")
			MetaLink(href: "/css/main.css", rel: "stylesheet")
			MetaTag(property: "og:type", content: "website")
			MetaTag(name: "Last-Modified", content: "\(Date().addingTimeInterval(TimeInterval(Calendar.current.timeZone.secondsFromGMT())).asISO8601)")
		}

        Body {
			Grid(alignment: .center) {
				NavigationBar(logo: "") {
					Link("Home", target: "/")
					Link("About", target: About())
					Link("Blog", target: Blog())
					Link("Privacy", target: Privacy())
				}.navigationItemAlignment(.leading)
				
				Divider().width(12)
				
				content
					.width(10)
				
				Divider().width(12)
				
				NavigationBar(logo: "") {
					Link(Image("/images/appstore.svg", description: "App Store Link").resizable().frame(width: 80), target: "https://apps.apple.com/us/app/winetaster-3/id1491063699?ls=1")
					Link("rss", target: "feed.rss")
					Link("Twitter", target: "https://twitter.com/winetasterapp")
				}.navigationItemAlignment(.leading)
			}
        }
    }
}
