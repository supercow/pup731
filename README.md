This repo is to demonstrate the bug described in PUP-731.

The following trivial custom extensions are included:

Custom type/provider: `changed_type`
Custom type/provider: `changed_provider`
Custom function: `custom_function`
Custom fact: `custom_fact`

Each provider, fact and function, should return a simple variation of a string
that represents (hardcoded) the environment the extension came from. For
example, the `changed_provider` provider should print the string
"changed\_provider dev".

The only exception is the changed\_type resource, which munges its hardcoded
environment name into the resource name, and the corresponding provider outputs
this title along with a hardcoded environment name (for example - `changed_type
dev - title is dev`).

These extensions all exist within the same module called `testmod`, which is
copied to the `dev` and `prod` environments directories, and only the
hardcoded string is modified.

There is a third environment called `blank` which includes the module, but with
no lib directory.

# Expected Behavior #

When all the environments are installed on the puppet master and configured in
an environment specific `$modulepath`, agents connecting should print output of
corresponding to the environment specified by running `puppet agent -t
--environment <env>`, where `<env>` is `dev` or `prod`. If `<env>` is `blank`,
the catalog should fail.

No string should appear that represents another environment. I.e., when running
with `--environment dev`, the string `prod` should not appear in the agent run
output.



