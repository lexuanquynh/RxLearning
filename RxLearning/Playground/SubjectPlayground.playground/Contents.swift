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
            print("1)" + string)
        })
    subject.on(.next("1"))

    // Add subscription two
    let subscriptionTwo = subject
      .subscribe { event in
        print("2)", event.element ?? event)
      }

    subscriptionOne.dispose()
    subject.onNext("4")

    // 1
    subject.onCompleted()
    // 2
    subject.onNext("5")
    // 3
    subscriptionTwo.dispose()
    let disposeBag = DisposeBag()
    // 4
    subject
      .subscribe {
        print("3)", $0.element ?? $0)
      }.disposed(by: disposeBag)

    subject.onNext("?")
}
