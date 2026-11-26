// package meta (no JSON)

func pkg_meta_name():
    return "mylib"

func pkg_meta_version():
    return "0.1.0"

func pkg_meta_deps():
    return []

func pkg_meta_platforms():
    return ["win-x64", "linux-x64", "darwin-arm64"]

func pkg_meta_artifacts():
    let arts = empty_map()
    set(arts, "win-x64", "bin/win-x64/mylib.dll")
    set(arts, "linux-x64", "bin/linux-x64/libmylib.so")
    set(arts, "darwin-arm64", "bin/darwin-arm64/libmylib.dylib")
    return arts
