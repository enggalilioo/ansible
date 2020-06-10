Conditional Examples for "when" statement
- [EQUAL - String] Run task only if the distribution is Ubuntu

when: ansible_distribution == 'Ubuntu'



- [EQUAL - Number ] Run task only if the integer variable  "app_replicas" equals 12

when: app_replicas == 12



- [LESS THAN ] Run task only if the integer variable  "app_replicas" less than 12

when: app_replicas < 12



- [GREATER THAN ] Run task only if the integer variable  "app_replicas" greater than 12

when: app_replicas > 12



-  [NOT Equal] Run task only if the distribution is NOT Centos

when: ansible_distribution != 'Centos'



- [VAR EXISTS] Run task only if the variable "git_branch" exists

when: git_branch is defined



- [VAR NOT EXISTS] Run task only if the variable "git_branch" does NOT exist

when: git_branch is not defined



- [BELONG TO] Run task only if a string (git_branch variable) is an element in an array

when:  ( git_branch in ["master", "development"] )



- [AND Operator] Run task only if 2 conditions are true :

when: ( app_replicas == 12 ) and ( ansible_distribution == 'Ubuntu')

Alternatively, put conditions in array (list) is the same as "and" operator

when:
- app_replicas == 12
- ansible_distribution == 'Ubuntu'


- [OR Operator] Run task only if one of 2 conditions is true :

when: ( app_replicas == 12 ) or ( ansible_distribution == 'Ubuntu' )