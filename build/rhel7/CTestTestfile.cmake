# CMake generated Testfile for 
# Source directory: /home/ec2-user/content/rhel7
# Build directory: /home/ec2-user/content/build/rhel7
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(rhel7-ansible-playbooks-generated-for-all-rules "env" "PYTHONPATH=/home/ec2-user/content" "/usr/bin/python" "/home/ec2-user/content/tests/ansible_playbooks_generated_for_all_rules.py" "--build-dir" "/home/ec2-user/content/build" "--product" "rhel7")
SET_TESTS_PROPERTIES(rhel7-ansible-playbooks-generated-for-all-rules PROPERTIES  LABELS "quick")
ADD_TEST(rhel7-ansible-assert-playbooks-schema "sh" "-c" "/usr/bin/python \$@" "_" "/home/ec2-user/content/tests/assert_ansible_schema.py" "/home/ec2-user/content/build/rhel7/playbooks/all/*")
ADD_TEST(validate-ssg-rhel7-cpe-dictionary.xml "/usr/bin/oscap" "cpe" "validate" "/home/ec2-user/content/build/ssg-rhel7-cpe-dictionary.xml")
ADD_TEST(validate-ssg-rhel7-cpe-oval.xml "/usr/bin/oscap" "oval" "validate" "--schematron" "/home/ec2-user/content/build/ssg-rhel7-cpe-oval.xml")
ADD_TEST(validate-ssg-rhel7-xccdf.xml "/usr/bin/oscap" "xccdf" "validate" "/home/ec2-user/content/build/ssg-rhel7-xccdf.xml")
ADD_TEST(verify-references-ssg-rhel7-xccdf.xml "env" "PYTHONPATH=/home/ec2-user/content" "/usr/bin/python" "/home/ec2-user/content/build-scripts/verify_references.py" "--rules-with-invalid-checks" "--ovaldefs-unused" "/home/ec2-user/content/build/ssg-rhel7-xccdf.xml")
SET_TESTS_PROPERTIES(verify-references-ssg-rhel7-xccdf.xml PROPERTIES  LABELS "quick")
ADD_TEST(verify-ssg-rhel7-xccdf.xml-override-true-all-profile-titles "/usr/bin/xmllint" "--xpath" "//*[local-name()=\"Profile\"]/*[local-name()=\"title\"][not(@override=\"true\")]" "/home/ec2-user/content/build/ssg-rhel7-xccdf.xml")
SET_TESTS_PROPERTIES(verify-ssg-rhel7-xccdf.xml-override-true-all-profile-titles PROPERTIES  LABELS "quick" WILL_FAIL "true")
ADD_TEST(verify-ssg-rhel7-xccdf.xml-override-true-all-profile-descriptions "/usr/bin/xmllint" "--xpath" "//*[local-name()=\"Profile\"]/*[local-name()=\"description\"][not(@override=\"true\")]" "/home/ec2-user/content/build/ssg-rhel7-xccdf.xml")
SET_TESTS_PROPERTIES(verify-ssg-rhel7-xccdf.xml-override-true-all-profile-descriptions PROPERTIES  LABELS "quick" WILL_FAIL "true")
ADD_TEST(validate-ssg-rhel7-oval.xml "/usr/bin/oscap" "oval" "validate" "--schematron" "/home/ec2-user/content/build/ssg-rhel7-oval.xml")
ADD_TEST(missing-cces-rhel7 "env" "PYTHONPATH=/home/ec2-user/content" "/usr/bin/python" "/home/ec2-user/content/tests/missing_cces.py" "/home/ec2-user/content/build/ssg-rhel7-ds.xml")
SET_TESTS_PROPERTIES(missing-cces-rhel7 PROPERTIES  LABELS "quick")
ADD_TEST(validate-ssg-rhel7-ds.xml "/usr/bin/oscap" "ds" "sds-validate" "/home/ec2-user/content/build/ssg-rhel7-ds.xml")
ADD_TEST(validate-ssg-rhel7-ds-1.2.xml "/usr/bin/oscap" "ds" "sds-validate" "/home/ec2-user/content/build/ssg-rhel7-ds-1.2.xml")
ADD_TEST(validate-ssg-centos7-xccdf.xml "/usr/bin/cmake" "-E" "touch" "/home/ec2-user/content/build/rhel7/validation-ssg-centos7-xccdf.xml")
ADD_TEST(validate-ssg-centos7-ds.xml "/usr/bin/oscap" "ds" "sds-validate" "/home/ec2-user/content/build/ssg-centos7-ds.xml")
ADD_TEST(validate-ssg-centos7-ds-1.2.xml "/usr/bin/oscap" "ds" "sds-validate" "/home/ec2-user/content/build/ssg-centos7-ds-1.2.xml")
ADD_TEST(validate-ssg-sl7-xccdf.xml "/usr/bin/cmake" "-E" "touch" "/home/ec2-user/content/build/rhel7/validation-ssg-sl7-xccdf.xml")
ADD_TEST(validate-ssg-sl7-ds.xml "/usr/bin/oscap" "ds" "sds-validate" "/home/ec2-user/content/build/ssg-sl7-ds.xml")
ADD_TEST(validate-ssg-sl7-ds-1.2.xml "/usr/bin/oscap" "ds" "sds-validate" "/home/ec2-user/content/build/ssg-sl7-ds-1.2.xml")
