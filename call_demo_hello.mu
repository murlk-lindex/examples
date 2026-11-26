// Smoke after: mum install demo_hello
// Run: murlk run examples/call_demo_hello.mu
import cfg
import fs
import string

let home = cfg_env_or("MURLK_HOME", "")
if home == "":
    home = cfg_env_or("USERPROFILE", ".") + "/.murlk"
let mod_path = home + "/libs/demo_hello/0.1.0/mod.mu"
if fs_exists(mod_path) == 0:
    print("FAIL: not installed: " + mod_path)
    print("hint: mum install demo_hello")
else:
    let body = fs_read(mod_path)
    if contains(body, "hello from demo_hello") == 0:
        print("FAIL: installed mod.mu missing expected text")
    else:
        print("OK call demo_hello: installed mod.mu ready")
        print(mod_path)
