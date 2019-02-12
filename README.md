# FacebookNativeLoginFix
Fixes facebook native login to open facebook app instead of safari

Just add this class to your bridging headers and call FacebookFix.fix() before calling facebook login method.

Example:

```
loginManager.loginBehavior = LoginBehavior.native
FacebookFix.fix()
loginManager.logIn(readPermissions: [.publicProfile, .email], viewController: self){ loginResult in
  //your login code
})
```
