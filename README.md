# CDSwiftUI-EnvironmentObject
A comprehensive guide to @EnvironmentObject properties and their usage.

One of the biggest challenge when starting SwiftUI is to understand how it works and all its keywords. 

"SwiftUI is an innovative, exceptionally simple way to build user interfaces across all Apple platforms with the power of Swift. Build user interfaces for any Apple device using just one set of tools and APIs." - Apple. 

Now, before it becomes "simple", we need to understand its principles and logic. 

----------------------------

This project demonstrates the -@EnvironmentObject- keyword. 
Citing the Apple's documentation, @EnvironmentObject is a property wrapper type for an observable object supplied by a parent or ancestor view.

What's cool about the @EnvironmentObject wrapper is that you need to inject your observable object only once in an ancestor view by calling the .environmentObject(..) method on it. The data/object then becomes available for this view and all its subviews. For instance, instead of passing some data from view A, to view B, to view C, in order to use it in view D, you can create an Observable Object, pass it to view A as an EnvironmentObject, and SwiftUI will make it available to view D for you. However, make sure that you correctly inject your object to your ancestor before using it in a subview, otherwise your app will crash. 

The entire purpose of creating EnvironmentObjects is to synchronize its data among all objects using it, like an Observable object. 

To wrap up, if you want to use @EnvironmentObject to share data between views, you need to create a new class conforming to the ObservableObject protocol. This will become your shared model. Inside this class, use the @Published wrapper on the properties you want to notify changes on. Inject your object into your ancestor views by using the .environmentObject(..) method when creating the instance of your view. Finally, use the @EnvironmentObject wrapper inside your subview to access your shared data and its properties.  

------------ 
EASY PEASY LEMON SWIFTY
