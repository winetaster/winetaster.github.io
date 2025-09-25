import Foundation
import Ignite

struct Support: StaticPage {
    var title = "WineTaster 3 – Support"
	@Environment(\.articles) var articles

	var body: some HTML {
		for article in articles.all.filter({$0.title == "Support"}) {
			Text(article.text)
		}
    }
}
