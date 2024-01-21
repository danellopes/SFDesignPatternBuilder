### Example of the Builder Design Pattern (Stepwise)

This example of the stepwise builder design pattern was develop using Salesforce Apex language, but I've originally learned about this pattern in C#, so a few things change, mainly the methods ans syntax available to us.

Using a builder, we can create and API that assumes the responsibility for appending these strings, elements or whatever, and when assembling the elements we don't have to think about it anymore. Its really a build once and use forever approach.

One other technique used in this project was the Fluent Builder. This technique is all about flow of code. The idea is that the methods always return the object’s instance, this way we can chain method calls together and streamline the code, making it more readable.

If your interested about what course i took, you can access it via this [link](https://www.udemy.com/course/design-patterns-csharp-dotnet).
