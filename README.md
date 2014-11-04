devops-chef
===========
A repository which contains cookbooks, roles and other chef artifacts which I am using to manage my personal workstations and servers using Chef running in 'local mode'. 

Bootstrapping
- Install Chef using install script from Get Chef, or MSI installer for Windows
- Install a git client
- Clone repository
- Execute run-chef.sh (chmod 755 first) or run-chef.bat
**Note: You need a node.json in nodes/ that matches the hostname of the given machine

Workflow
- Make changes to cookbooks, recipes, roles, nodes locally
- Test locally
- Commit and Push
**Note: Chef local mode will update your node.json file as if it the node was registered on a Chef server. You'll want to clean that out before committing. 
