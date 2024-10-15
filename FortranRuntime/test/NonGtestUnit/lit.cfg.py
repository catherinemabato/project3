# -*- Python -*-

import os

import lit.formats

# name: The name of this test suite.
config.name = "FortranRuntime-OldUnit"

# suffixes: A list of file extensions to treat as test files.
# On Windows, ".exe" also matches the GTests and will execited redundantly.
config.suffixes = [".test", ".exe"]

# test_source_root: The root path where unit test binaries are located.
config.test_source_root = os.path.join(config.fortranruntime_binary_dir, "unittests")

# test_exec_root: The root path where tests should be run.
# lit writes a '.lit_test_times.txt' file into this directory.
config.test_exec_root = config.fortranruntime_binary_test_dir

# testFormat: The test format to use to interpret tests.
config.test_format = lit.formats.ExecutableTest()
