FILE(REMOVE_RECURSE
  "CMakeFiles/rhel7-html-profile-stats"
  "../ssg-rhel7-xccdf.xml"
  "xccdf-linked.xml"
  "oval-linked.xml"
  "ocil-linked.xml"
  "xccdf-unlinked.xml"
  "oval-unlinked.xml"
  "ocil-unlinked.xml"
  "xccdf-unlinked-ocilrefs.xml"
  "bash-fixes.xml"
  "ansible-fixes.xml"
  "puppet-fixes.xml"
  "anaconda-fixes.xml"
  "ignition-fixes.xml"
  "kubernetes-fixes.xml"
  "xccdf-unlinked-resolved.xml"
  "shorthand.xml"
  "profiles"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/rhel7-html-profile-stats.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
