# Week 11: Asynchronous Programming in Dart

**Course:** PC16 – Mobile Development with Lab  
**Institution:** National Teachers College  
**Deliverable:** Async Behavior added to OOP Console Application  

## Overview
This builds upon the Week 10 OOP assignment by introducing asynchronous programming. It demonstrates how to perform operations that take time (like a system diagnostic) without freezing the program, using Dart's `Future`, `async`, and `await`.

## Features
* **Async Method:** Added `runDiagnostic()` to the `Vehicle` base class. It returns a `Future<String>`.
* **Simulated Delay:** Used `Future.delayed(Duration(seconds: 2))` inside the diagnostic method to simulate processing time.
* **Async Main:** The `main()` function is now marked as `async`.
* **Execution Order:** 
  1. Prints status messages immediately to the console.
  2. Uses `await` to call `runDiagnostic()`.
  3. Pauses execution of the remaining code for 2 seconds.
  4. Prints the final resolved `String` result.

## How to Run

1. Open your terminal or command prompt.
2. Run the file:
   ```bash
   dart run main.dart
