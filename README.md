# flutter_testdemo

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
#自动化测试方法：

   ##单元测试：
           测试单一功能、方法、类。例如，将测试单元的外部依赖模拟出来package:mockito。
           单元测试通常不会读取/写入磁盘、渲染到屏幕，也不会从运行测试的进程外部接收用户操作。单元测试的目标是在各种条件下验证逻辑单元的正确性。
           
    ##组件测试：
            测试单个Widget，目标是验证Widget如预期的外观和交互功能。测试Widget涉
            及多个类，并需要提供适当的Widget声明周期上下文的测试环境。
            例如，它应该能够接收和响应用户操作和事件,执行布局并实例化子Widget。
                      
            组件测试比单元测试更全面。
     ##集成测试：
            测试整个应用程序或应用程序的很大一部分。通常，集成测试可以在真实设
            或模拟器上运行。
            集成测试的目标是验证应用程序作为一个整体是否正确运行，它所组成的所有
            Widget是否如预期的那样相互集成。还可来验证应用的性能。
                                        
                                  类目    单元测试    组件测试    集成测试
                                  维护成本    低           高        很高
                                  依赖           少           多        很多
                                  执行速度    快           慢        非常慢
# flutter_test
# flutter_testDemo
