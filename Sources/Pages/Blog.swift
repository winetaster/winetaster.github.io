import Foundation
import Ignite

struct Blog: StaticPage {
    var title = "WineTaster Blog"
	@Environment(\.articles) var articles
	let df = ISO8601DateFormatter()
	let dateFormatter = DateFormatter()
	func dateFromISO8601(_ string: String) -> String {
		let date = df.date(from: string)
		dateFormatter.dateFormat = "MMM d, yyyy"
		return dateFormatter.string(from: date!)
	}
	var body: some HTML {
		Text("WineTaster 3 – Blog").font(.title1)
		Table(rows: {
			for article in articles.all.filter({$0.layout == "BlogPage"}) {
				Row {
					Text("\(dateFromISO8601(df.string(from: article.date)))")
					Link(target: article.path) {
						article.title
					}
				}
			}
		})
    }
}
