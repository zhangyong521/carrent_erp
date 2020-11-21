package com.zy.task;

import com.zy.sys.constast.SysConstast;
import com.zy.sys.utils.AppFileUtils;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.io.File;

/**
 * @Author: 张勇
 * @Blog: https://blog.csdn.net/zy13765287861
 * @Version: 1.0
 * @Date: 2020-11-21 17:59
 * @PS: @EnableScheduling  //开启定时任务
 */
@Component
@EnableScheduling
public class RecycleTempFileTask {

    /**
     * 每天晚上12点执行
     */
    @Scheduled(cron = "0 0 0 * * ? ")
    public void recycleTempFile(){
        File file = new File(AppFileUtils.PATH);
    }

    /**
     * 删除图片
     * @param file
     */
    public void deleteFile(File file){
        if (null!=file){
            File[] listFiles = file.listFiles();
            if (null!=listFiles&&listFiles.length>0){
                for (File f : listFiles) {
                    if (f.getName().endsWith(SysConstast.FILE_UPLOAD_TEMP)){
                        f.delete();
                    }else {
                        //如果是文件夹，在递归删除一次
                        deleteFile(f);
                    }
                }
            }
        }
    }


}
