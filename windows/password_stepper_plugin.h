#ifndef FLUTTER_PLUGIN_PASSWORD_STEPPER_PLUGIN_H_
#define FLUTTER_PLUGIN_PASSWORD_STEPPER_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace password_stepper {

class PasswordStepperPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  PasswordStepperPlugin();

  virtual ~PasswordStepperPlugin();

  // Disallow copy and assign.
  PasswordStepperPlugin(const PasswordStepperPlugin&) = delete;
  PasswordStepperPlugin& operator=(const PasswordStepperPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace password_stepper

#endif  // FLUTTER_PLUGIN_PASSWORD_STEPPER_PLUGIN_H_
