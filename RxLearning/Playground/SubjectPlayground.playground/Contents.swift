import UIKit
import RxSwift

public func example(of description: String, action: () -> Void) {
    print("\n--- Example of:", description, "---")
    action()
}

example(of: "PublishSubject") {
    let subject = PublishSubject<String>()
    subject.onNext("Co ai nghe tui noi khong?")
    let subscriptionOne = subject
        .subscribe(onNext: { string in
            print(string)
        })
    subject.on(.next("1"))
}
