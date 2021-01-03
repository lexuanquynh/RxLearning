import UIKit
import RxSwift

enum MyError: Error {
    case anError
}

public func example(of description: String, action: () -> Void) {
    print("\n--- Example of:", description, "---")
    action()
    
}

//example(of: "just, of, from") {
//    // 1
//    let one = 1
//    let two = 2
//    let three = 3
//    // 2
//    let observable: Observable<Int> = Observable<Int>.just(one)
//    let observable2 = Observable.of(one, two, three)
//    let observable3 = Observable.of([one, two, three])
//    let observable4 = Observable.from([one, two, three])
//}

/*
 example(of: "subscribe") {
 let one = 1
 let two = 2
 let three = 3
 let observable = Observable.of(one, two, three)
 
 //    observable.subscribe { event in
 //        print(event)
 //    }
 
 //    observable.subscribe { event in
 //      if let element = event.element {
 //        print(element)
 //      }
 //    }
 
 observable.subscribe(onNext: { element in
 print(element)
 })
 } */

//example(of: "empty") {
//  let observable = Observable<Void>.empty()
//    observable
//      .subscribe(
//    // 1
//        onNext: { element in
//          print(element)
//    },
//    // 2
//        onCompleted: {
//          print("Completed")
//    } )
//}

//example(of: "never") {
//  let observable = Observable<Any>.never()
//  observable
//    .subscribe(
//      onNext: { element in
//        print(element)
//    },
//      onCompleted: {
//        print("Completed")
//    }
//) }


//example(of: "range") {
//    // 1
//    let observable = Observable<Int>.range(start: 1, count: 10)
//    observable
//        .subscribe(onNext: { i in
//            // 2
//            let n = Double(i)
//            let fibonacci = Int(((pow(1.61803, n) - pow(0.61803, n)) /
//                                    2.23606).rounded())
//            print(fibonacci)
//        })
//}


//example(of: "dispose") {
//  // 1
//  let observable = Observable.of("A", "B", "C")
//  // 2
//  let subscription = observable.subscribe { event in
//// 3
//    print(event)
//  }
//   // subscription.dispose()
//}

//example(of: "DisposeBag") {
//  // 1
//  let disposeBag = DisposeBag()
//// 2
//  Observable.of("A", "B", "C")
//    .subscribe { // 3
//print($0) }
//    .disposed(by: disposeBag)
//}

//example(of: "create") {
//    let disposeBag = DisposeBag()
//
//    Observable<String>.create { observer in
//      // 1
//      observer.onNext("1")
//        observer.onError(MyError.anError)
//
//      // 2
//      observer.onCompleted()
//    // 3
//      observer.onNext("?")
//    // 4
//      return Disposables.create()
//    }.subscribe(
//        onNext: { print($0) },
//        onError: { print($0) },
//        onCompleted: { print("Completed") },
//        onDisposed: { print("Disposed") }
//      )
//    .disposed(by: disposeBag)
//}
/*
 example(of: "create") {
 enum MyError: Error {
 case anError
 }
 let disposeBag = DisposeBag()
 Observable<String>.create { observer in
 // 1
 observer.onNext("1")
 //    observer.onError(MyError.anError)
 // 2
 //    observer.onCompleted()
 // 3
 observer.onNext("?")
 // 4
 return Disposables.create()
 }
 .subscribe(
 onNext: { print($0) },
 onError: { print($0) },
 onCompleted: { print("Completed") },
 onDisposed: { print("Disposed") }
 )
 //  .disposed(by: disposeBag)
 */
// code bài 8 ở đây
/*
example(of: "deferred") {
    let disposeBag = DisposeBag()
    // 1
    var flip = false
    // 2
    let factory: Observable<Int> = Observable.deferred {
        // 3
        flip = !flip
        // 4
        if flip {
            return Observable.of(1, 2, 3)
        } else {
            return Observable.of(4, 5, 6)
        }
    }
    
    for _ in 0...3 {
        factory.subscribe(onNext: {
            print($0, terminator: "")
        })
        .disposed(by: disposeBag)
        print()
    }
}
*/

// code bai 9 o day
example(of: "PublishSubject") {
  let subject = PublishSubject<String>()
}
