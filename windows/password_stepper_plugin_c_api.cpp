#include "include/password_stepper/password_stepper_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "password_stepper_plugin.h"

void PasswordStepperPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  password_stepper::PasswordStepperPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
