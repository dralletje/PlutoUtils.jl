import os

def setup_pluto():
    def _get_pluto_cmd(port):
        return ["julia", "-Jprecompile.so", "-e", "import Pluto; Pluto.run(\"127.0.0.1\", " + str(port) + ")"]

    return {
        "command": _get_pluto_cmd,
        "timeout": 60,
        "new_browser_tab": True
    }