# password_stepper
Flutter Password stepper

![logo.png](https://avatars.githubusercontent.com/u/109963617?s=96&v=4 "logo.png")

---

# About

This package allows you to draw password stepper with Flutter.

**Weak Password View**

![screenshot1.png](https://raw.githubusercontent.com/team7s/password_stepper/main/screenshot/Screenshot1.png "screenshot1.png")

**Average Password View**

![screenshot2.png](https://raw.githubusercontent.com/team7s/password_stepper/main/screenshot/Screenshot2.png "screenshot2.png")

**Strong Password View**

![screenshot3.png](https://raw.githubusercontent.com/team7s/password_stepper/main/screenshot/Screenshot3.png "screenshot3.png")

# Usage

| Parameter           | Default            | Description                              |
| ------------------- | :----------------: | ---------------------------------------: |
| **passwordText**       | ''    | Creates a passwordText for an listener for your text |
| **textWeak**  | Weak    | Creates a textWeak for an your weak text String    |
| **textAverage**   | Average  | Creates a textWeak for an your Average text String |
| **textStrong**      | Strong  | Creates a textWeak for an your Strong text String    |
| **colorWeak**       | Colors.red       | Creates a colorWeak for an your Weak text color                  |
| **colorAverage**    | Colors.orange    | Creates a colorAverage for an your Average text color    |
| **colorStrong**      | Colors.green       | Creates a colorStrong for an your Strong text color                 |
| **colorUnSelect**      | Colors.grey       | Creates a colorUnSelect for an your color Un Select              |
| **textStyle**   | TextStyle(fontSize: 13, color: getStatusColor(), fontWeight: FontWeight.bold)                 | Creates a textStyle for an your Text Style           |
| **numberRegExp**    | RegExp(r'.*[0-9].*') | Creates a numberRegExp for an your number RegExp            |
| **letterRegExp** | RegExp(r'.*[A-Za-z].*') | Creates a letterRegExp for an your letter RegExp   |

This can be used without parameters.

```
import 'package:password_stepper/view_password_stepper.dart';

ViewPasswordStepper(passwordText: 'abc')
```

# Example
The sample code can be found under the `example` package.
You can try changing all parameters.


## Visit our web and contact to hire
Thank you [here](https://team7s.com/)