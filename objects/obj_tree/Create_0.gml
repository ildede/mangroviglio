/// @description Init

branchCount = 0;

//Branch 1
var branch = instance_create_depth(x+40, y+40, depth, obj_root);
branchCount ++;
branch.branchNumber = branchCount;
branch.dir = "right";
activeRoot = branch;

//Branch 2
var branch2 = instance_create_depth(x-40, y+40, depth, obj_root);
branchCount ++;
branch2.dir = "left";
branch2.branchNumber = branchCount;

//Branch 3
var branch3 = instance_create_depth(x-40, y-40, depth, obj_root);
branchCount ++;
branch3.dir = "left";
branch3.branchNumber = branchCount;

//Branch 4
var branch4 = instance_create_depth(x+40, y-40, depth, obj_root);
branchCount ++;
branch4.dir = "right";
branch4.branchNumber = branchCount;

activeRoot = -1;

selectedBranch = 0;