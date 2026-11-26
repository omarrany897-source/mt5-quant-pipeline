I'll start by reading the prompt file to understand the task requirements.


<tool_call>
read_file
<arg_key>path</arg_key>
<arg_value>prompts/01-researcher.md</arg_value>
</tool_call>
<tool_call>
shell
<arg_key>command</arg_key>
<arg_value>ls -la && ls -la prompts/ outputs/ 2>/dev/null || echo "checking dirs"</arg_value>
<arg_key>description</arg_key>
<arg_value>List files in working directory, prompts and outputs folders</arg_value>
</tool_call>
