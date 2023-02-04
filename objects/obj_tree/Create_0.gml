/// @description Init

branchNumber = 0;

var branch = instance_create_depth(x+40, y+40, depth, obj_root);
branchNumber ++;
branch.branchNumber = branchNumber;
activeRoot = branch;

var branch2 = instance_create_depth(x-40, y+40, depth, obj_root);
branchNumber ++;
branch2.branchNumber = branchNumber;

activeRoot = -1;

selectedBranch = 0;