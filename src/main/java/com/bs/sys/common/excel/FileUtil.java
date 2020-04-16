package com.bs.sys.common.excel;

import java.io.File;

public class FileUtil {/**
 * 创建一个文件夹
 * 如果存在       不创建
 * 如果不存在    创建
 * @param filePath
 * @return
 */
    public static boolean makeDirs(String filePath) {
        File folder = new File(filePath);
        return (folder.exists() && folder.isDirectory()) ? true : folder.mkdirs();
    }

    /**
     * 删除单个文件
     * 路径 是全路径
     * c盘啥啥的全路径
     * @param fileName  要删除的文件的文件名
     * @return 单个文件删除成功返回true，否则返回false
     */
    public static boolean deleteFile(String fileName) {
        File file = new File(fileName);
        // 如果文件路径所对应的文件存在，并且是一个文件，则直接删除
        if (file.exists() && file.isFile()) {
            if (file.delete()) {
                return true;
            } else {
                //System.out.println("删除单个文件" + fileName + "失败！");
                return false;
            }
        } else {
            //System.out.println("删除单个文件失败：" + fileName + "不存在！");
            return false;
        }
    }

}
