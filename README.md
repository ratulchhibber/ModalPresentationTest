The modal presentation style by default in iOS 13 is sheet style(card like appearance) compared to full screen presentation in iOS 12.

This leads to a different behaviour when the presented VC is dismissed-

1. ViewWillAppear and ViewDidAppear are not called on the VC from which is was presented (either when dismissed programatically - calling dismiss(controller, animated: true) or dismissing via swipe down gesture)

2. Thus, in order to detect the dismissal we have two options -
    1. Implement UIAdaptivePresentationControllerDelegate - presentationControllerDidDismiss method - This only detects dismissal via swipe down gesture.
    2. To detect dismissal via click of dismissal button - We would need to implement a closure callback - elucidated in code (modelViewDismissed)

3. The swipe down gesture can be disabled using view.isModalInPresentation = true property.
