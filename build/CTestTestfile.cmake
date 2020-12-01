# CMake generated Testfile for 
# Source directory: /home/ec2-user/content
# Build directory: /home/ec2-user/content/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(sanity-ssg-tables-table-rhel7-nistrefs.html "/usr/bin/grep" "-zv" "</thead>[[:space:]]*</table>" "/home/ec2-user/content/build/tables/table-rhel7-nistrefs.html")
ADD_TEST(sanity-ssg-tables-table-rhel7-cisrefs.html "/usr/bin/grep" "-zv" "</thead>[[:space:]]*</table>" "/home/ec2-user/content/build/tables/table-rhel7-cisrefs.html")
ADD_TEST(sanity-ssg-tables-table-rhel7-cuirefs.html "/usr/bin/grep" "-zv" "</thead>[[:space:]]*</table>" "/home/ec2-user/content/build/tables/table-rhel7-cuirefs.html")
ADD_TEST(sanity-ssg-tables-table-rhel7-pcidssrefs.html "/usr/bin/grep" "-zv" "</thead>[[:space:]]*</table>" "/home/ec2-user/content/build/tables/table-rhel7-pcidssrefs.html")
ADD_TEST(sanity-ssg-tables-table-rhel7-anssirefs.html "/usr/bin/grep" "-zv" "</thead>[[:space:]]*</table>" "/home/ec2-user/content/build/tables/table-rhel7-anssirefs.html")
ADD_TEST(sanity-ssg-tables-table-rhel7-ospprefs.html "/usr/bin/grep" "-zv" "</thead>[[:space:]]*</table>" "/home/ec2-user/content/build/tables/table-rhel7-ospprefs.html")
ADD_TEST(sanity-ssg-tables-table-rhel7-nistrefs-standard.html "/usr/bin/grep" "-zv" "</thead>[[:space:]]*</table>" "/home/ec2-user/content/build/tables/table-rhel7-nistrefs-standard.html")
ADD_TEST(sanity-ssg-tables-table-rhel7-nistrefs-ospp.html "/usr/bin/grep" "-zv" "</thead>[[:space:]]*</table>" "/home/ec2-user/content/build/tables/table-rhel7-nistrefs-ospp.html")
ADD_TEST(sanity-ssg-tables-table-rhel7-nistrefs-C2S.html "/usr/bin/grep" "-zv" "</thead>[[:space:]]*</table>" "/home/ec2-user/content/build/tables/table-rhel7-nistrefs-C2S.html")
ADD_TEST(sanity-ssg-tables-table-rhel7-nistrefs-stig.html "/usr/bin/grep" "-zv" "</thead>[[:space:]]*</table>" "/home/ec2-user/content/build/tables/table-rhel7-nistrefs-stig.html")
ADD_TEST(sanity-ssg-tables-table-rhel7-anssirefs-nt28_minimal.html "/usr/bin/grep" "-zv" "</thead>[[:space:]]*</table>" "/home/ec2-user/content/build/tables/table-rhel7-anssirefs-nt28_minimal.html")
ADD_TEST(sanity-ssg-tables-table-rhel7-anssirefs-nt28_intermediary.html "/usr/bin/grep" "-zv" "</thead>[[:space:]]*</table>" "/home/ec2-user/content/build/tables/table-rhel7-anssirefs-nt28_intermediary.html")
ADD_TEST(sanity-ssg-tables-table-rhel7-anssirefs-nt28_enhanced.html "/usr/bin/grep" "-zv" "</thead>[[:space:]]*</table>" "/home/ec2-user/content/build/tables/table-rhel7-anssirefs-nt28_enhanced.html")
ADD_TEST(sanity-ssg-tables-table-rhel7-anssirefs-nt28_high.html "/usr/bin/grep" "-zv" "</thead>[[:space:]]*</table>" "/home/ec2-user/content/build/tables/table-rhel7-anssirefs-nt28_high.html")
ADD_TEST(sanity-ssg-tables-table-rhel7-cces.html "/usr/bin/grep" "-zv" "</thead>[[:space:]]*</table>" "/home/ec2-user/content/build/tables/table-rhel7-cces.html")
ADD_TEST(sanity-ssg-tables-table-rhel7-srgmap.html "/usr/bin/grep" "-zv" "</thead>[[:space:]]*</table>" "/home/ec2-user/content/build/tables/table-rhel7-srgmap.html")
ADD_TEST(sanity-ssg-tables-table-rhel7-srgmap-flat.html "/usr/bin/grep" "-zv" "</thead>[[:space:]]*</table>" "/home/ec2-user/content/build/tables/table-rhel7-srgmap-flat.html")
ADD_TEST(sanity-ssg-tables-table-rhel7-stig.html "/usr/bin/grep" "-zv" "</thead>[[:space:]]*</table>" "/home/ec2-user/content/build/tables/table-rhel7-stig.html")
ADD_TEST(sanity-ssg-tables-table-rhel7-stig-manual.html "/usr/bin/grep" "-zv" "</thead>[[:space:]]*</table>" "/home/ec2-user/content/build/tables/table-rhel7-stig-manual.html")
ADD_TEST(sanity-ssg-tables-table-rhel7-stig-testinfo.html "/usr/bin/grep" "-zv" "</thead>[[:space:]]*</table>" "/home/ec2-user/content/build/tables/table-rhel7-stig-testinfo.html")
ADD_TEST(unique-cces "/home/ec2-user/content/tests/assert_cces_unique.sh")
SET_TESTS_PROPERTIES(unique-cces PROPERTIES  LABELS "quick")
SUBDIRS(tests)
SUBDIRS(rhel7)
