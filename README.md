# SwiftUI-Coordinator

The piece of code helps us to navigate a view to others. It also helps us to pass data to other views easily.
Each navigation needs its own Coordinator. Each navigation also has its own NavigationStack and Router to manage navigation. It is designed for SwiftUI.

- To push a view in NavigationStack, NavigationLink should be called.
- To pop the last view in NavigationStack, router.pop() should be called.
- To return the root, router.returnRoot() should be called.
- To present a sheet, the sheet item in Router should be set. It is waiting for an enum that is defined in the router related to navigation before.
- To present full screen, the full-screen item in Router should be set. It is waiting for an enum that is defined in the router related to navigation before.
