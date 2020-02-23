## 二叉树
二叉树的左子树和右子树都是二叉树，因此非常适合递归函数来访问。
其实，递归调用是借助了操作系统的栈，如果使用BFS，需要一个FIFO配合。

递推项公式：
终止条件。

使用递归与不使用递归的方法:


判断终止条件：
自身操作行为。
f(left_tree)
f(right_tree)

深度优先DFS
广度优先BFS

- 二叉树的深度  
题目：给定一个二叉树，找出其最大深度。
思路：只有完成所有节点的遍历后才能得出结果。如果二叉树是以序列化后的数组作为输入，那么不需要遍历，直接取log结果即可。

DFS:
```
int maxDepth(TreeNode *root){
    //终止条件
    if(root == nullptr){
        return 0;
    }
    //访问左右子树
    int left_depth = maxDepth(root->left);
    int right_depth = maxDepth(root->right);
    //根据返回值，计算当前节点的结果
    int current_depth = (left_depth > right_depth) ? left_depth : right_depth;
    return current_depth + 1;
}
```
4ms, 19.4MB

BFS:


题目: Leetcode 617
给定两个二叉树，想象当你将它们中的一个覆盖到另一个上时，两个二叉树的一些节点便会重叠。

你需要将他们合并为一个新的二叉树。合并的规则是如果两个节点重叠，那么将他们的值相加作为节点合并后的新值，否则不为 NULL 的节点将直接作为新二叉树的节点。



### 思路
- 能否改变`TreeNode* t1`与`TreeNode* t2`?

### 题解：
```
    TreeNode *mergeTree(TreeNode *t1, TreeNode *t2){
        if(t1 == nullptr && t2 == nullptr){
            return nullptr;
        }
        int val1 = t1 ? t1->val : 0;
        int val2 = t2 ? t2->val : 0;
        TreeNode *p = new TreeNode(val1+val2);
        p->left = mergeTrees((t1 ? t1->left : nullptr), (t2 ? t2->left : nullptr));
        p->right = mergeTrees((t1 ? t1->right : nullptr), (t2 ? t2->right : nullptr));
        return p;
    }
```

- 递归版本

```
// java
    public TreeNode mergeTree(TreeNode t1, Treenode t2){
        if (t1 == null)
            return t2;
        if (t2 == null)
            return t1;
        t1.val += t2.val;
        t1.left = mergeTree(t1->left, t2->left);
        t1.right = mergeTree(t1->right, t2->right);
        return t1
    }
```
时间复杂度：O(N) 两棵树中节点个数较小值
空间复杂度：O(N) 最坏的情况下会递归Ｎ层，需要O(N)的栈空间

- 迭代版本
```
// java
    public TreeNode mergeTree(TreeNode t1, TreeNode t2){
        if(t1 == null)
            return t2;
        Stack <TreeNode[]> stack = new Stack <>();
        stack.push(new TreeNode[] {t1, t2});
        while(!stack.isEmpty()){
            TreeNode[] t = stack.pop();
            if(t[0] == null) || t[1] == null){
                continue;
            }
            t[0].val += t[1].val;
            if (t[0].left == null){
                t[0].left = t[1].left;
            } else {
                
            }
        }

    }


```