#ifndef _json_config_h_
#define _json_config_h_

#if defined(RTC_COCOA_FAMILY)
#include "config_macos.h"
#elif defined(RTC_LINUX_FAMILY)
#include "config_linux.h"
#elif defined(RTC_WINDOWS_FAMILY)
#include "config_windows.h"
#else
#error "Unable to include json-c config.h"
#endif

#endif /* _json_config_h_ */
