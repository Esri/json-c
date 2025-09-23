project "json-c"

dofile(_BUILD_DIR .. "/static_library.lua")

configuration { "*" }

uuid "CBFBF353-4448-4C0C-A756-BE1721B6F069"

flags { "NoPCH" }

includedirs {
  _3RDPARTY_DIR .. "/json-c",
  _3RDPARTY_DIR .. "/json-c/src_generated", -- RTC generated files
  _3RDPARTY_DIR .. "/json-c/src_generated/port", -- RTC generated files per platform
}

defines {
}

files {
  -- "apps/...", -- application code
  "arraylist.c",
  "debug.c", -- needed for _debug targets
  "json_c_version.c",
  "json_object.c",
  "json_object_iterator.c",
  "json_patch.c",
  "json_pointer.c",
  "json_tokener.c",
  "json_util.c",
  "json_visit.c",
  -- "libjson.c", -- library things
  "linkhash.c",
  "printbuf.c",
  "random_seed.c",
  "strerror_override.c",
  -- "tests/...", -- test code
}

if (not _PLATFORM_WINDOWS) then
  defines {
    "_GNU_SOURCE", -- https://man7.org/linux/man-pages/man7/feature_test_macros.7.html needed to use C extentions
    "_REENTRANT",
  }
end

if (_PLATFORM_ANDROID) then
end

if (_PLATFORM_IOS) then
end

if (_PLATFORM_LINUX) then
end

if (_PLATFORM_MACOS) then
end

if (_PLATFORM_WINDOWS) then
end
