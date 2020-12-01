FILE(REMOVE_RECURSE
  "CMakeFiles/generate-ssg-tables-rhel7-all"
  "../tables/tables-rhel7-all.html"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/generate-ssg-tables-rhel7-all.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
