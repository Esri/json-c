from conans import ConanFile


class JsonCConan(ConanFile):
    name = "json-c"
    version = "0.18.0"
    url = "https://github.com/Esri/json-c/tree/runtimecore"
    license = "https://github.com/Esri/json-c/tree/runtimecore?tab=License-1-ov-file"
    description = "json-c - JSON library for C."

    # RTC specific triple
    settings = "platform_architecture_target"

    def package(self):
        base = self.source_folder + "/"
        relative = "3rdparty/json-c/"

        # headers
        self.copy("*.h", src=base, dst=relative)

        # libraries
        output = (
            "output/" + str(self.settings.platform_architecture_target) + "/staticlib"
        )
        self.copy("*" + self.name + "*", src=base + "../../" + output, dst=output)
