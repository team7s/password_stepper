//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <password_stepper/password_stepper_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) password_stepper_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "PasswordStepperPlugin");
  password_stepper_plugin_register_with_registrar(password_stepper_registrar);
}
