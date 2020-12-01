# CMake generated Testfile for 
# Source directory: /home/ec2-user/content/tests
# Build directory: /home/ec2-user/content/build/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(max-path-len "/usr/bin/python" "/home/ec2-user/content/tests/ensure_paths_are_short.py")
SET_TESTS_PROPERTIES(max-path-len PROPERTIES  LABELS "quick")
ADD_TEST(test-rule-dir-json "env" "PYTHONPATH=/home/ec2-user/content" "/usr/bin/python" "/home/ec2-user/content/utils/rule_dir_json.py")
ADD_TEST(validate-parse-affected "env" "PYTHONPATH=/home/ec2-user/content" "/usr/bin/python" "/home/ec2-user/content/tests/test_parse_affected.py" "/home/ec2-user/content" "/home/ec2-user/content/build/build_config.yml")
ADD_TEST(validate-parse-platform "env" "PYTHONPATH=/home/ec2-user/content" "/usr/bin/python" "/home/ec2-user/content/tests/test_parse_platform.py" "/home/ec2-user/content")
SET_TESTS_PROPERTIES(validate-parse-platform PROPERTIES  LABELS "quick")
ADD_TEST(stable-profile-ids "env" "PYTHONPATH=/home/ec2-user/content" "/usr/bin/python" "/home/ec2-user/content/tests/stable_profile_ids.py" "/home/ec2-user/content/build")
SET_TESTS_PROPERTIES(stable-profile-ids PROPERTIES  LABELS "quick")
ADD_TEST(stable-profiles "env" "PYTHONPATH=/home/ec2-user/content" "/usr/bin/python" "/home/ec2-user/content/tests/test_profile_stability.py" "/home/ec2-user/content/build" "/home/ec2-user/content/tests/data/profile_stability")
SET_TESTS_PROPERTIES(stable-profiles PROPERTIES  LABELS "quick")
ADD_TEST(machine-only-rules "env" "PYTHONPATH=/home/ec2-user/content" "/usr/bin/python" "/home/ec2-user/content/tests/test_machine_only_rules.py" "--source_dir" "/home/ec2-user/content" "--build_dir" "/home/ec2-user/content/build")
SET_TESTS_PROPERTIES(machine-only-rules PROPERTIES  LABELS "quick")
ADD_TEST(macros-oval "env" "PYTHONPATH=/home/ec2-user/content" "/usr/bin/python" "/home/ec2-user/content/tests/test_macros_oval.py" "--verbose")
SET_TESTS_PROPERTIES(macros-oval PROPERTIES  LABELS "quick")
