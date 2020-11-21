package com.zy.sys.utils;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author: 张勇
 * @Blog: https://blog.csdn.net/zy13765287861
 * @Version: 1.0
 * @Date: 2020-11-19 22:11
 * @PS: 把简单的集合转化成有层级管理的集合
 */
public class TreeNodeBuilder {

    /**
     * @param nodes
     * @param topPid 顶部id
     * @return
     */
    public static List<TreeNode> builder(List<TreeNode> nodes, Integer topPid) {

        List<TreeNode> treeNodes = new ArrayList<>();
        for (TreeNode n1 : nodes) {
            if (n1.getPid().equals(topPid)) {
                treeNodes.add(n1);
            }
            for (TreeNode n2 : nodes) {
                if (n2.getPid().equals(n1.getId())) {
                    n1.getChildren().add(n2);
                }
            }
        }
        return treeNodes;
    }

}
