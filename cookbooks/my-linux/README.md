my-linux Cookbook
===================
A cookbook that contains receipies to conifgure our linux VMs with a base configuration. 

Requirements
------------
#### cookbooks
- (CentOS) simple_iptables (https://github.com/rtkwlf/cookbook-simple-iptables)
- (CentOS) yum

Attributes
----------
TODO: List your cookbook attributes here.

e.g.
#### my-linux::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['my-linux_firewall']['ssh_allow']</tt></td>
    <td>Array</td>
    <td>A list of ip addresses to allow SSH from</td>
    <td>Not Defined</td>
  </tr>
</table>

Usage
-----
#### my-linux::default
TODO: Write usage instructions for each cookbook.

e.g.
Just include `my-linux` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[my-linux]"
  ]
}
```

Contributing
------------
TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: TODO: List authors
