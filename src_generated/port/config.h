#ifndef _json_config_h_
#define _json_config_h_

#if defined(RTC_COCOA_FAMILY)
#include "config_macos.h"
#elif defined(RTC_LINUX_DESKTOP)
#include "config_linux.h"
#elif defined(RTC_LINUX_ANDROID)
    #if defined(RTC_X64) || defined(RTC_ARM64)
    #include "config_android_arm64_x64.h"
    #elif defined(RTC_X86) || defined(RTC_ARMV7)
    #include "config_android_armv7_x86.h"
    #else
    #error "Unable to include json-c config.h for Android"
    #endif
#elif defined(RTC_WINDOWS_FAMILY)
#include "config_windows.h"
#else
#error "Unable to include json-c config.h"
#endif

#endif /* _json_config_h_ */
