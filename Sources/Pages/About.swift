import Foundation
import Ignite

struct About: StaticPage {
    var title = "About WineTaster 3"
	@Environment(\.articles) var articles

	var body: some HTML {
		Text("About WineTaster").font(.title1)
		for article in articles.all.filter({$0.title == "About WineTaster 3"}) {
			Text(article.text)
		}
    }
}
