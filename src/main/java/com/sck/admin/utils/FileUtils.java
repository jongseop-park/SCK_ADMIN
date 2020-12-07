package com.sck.admin.utils;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.UUID;

public class FileUtils {

    public static String getDate(){ // 년월일시분
        String now = "";
        Calendar cal = Calendar.getInstance();
        /*SimpleDateFormat sdf = new SimpleDateFormat("yyMMddHHmm");
        now = sdf.format(cal.getTime());*/
        int year = cal.get(Calendar.YEAR);
        int month = cal.get(Calendar.MONTH)+1;
        int day = cal.get(Calendar.DAY_OF_MONTH);
        now = File.separator + year + File.separator + month + File.separator + day + File.separator;  // separator(분리기호, '\','/')

        return now;
    }

    public static String getRandomString(String fileName){ // 랜덤문자 생성
        return UUID.randomUUID().toString().replaceAll("-","")+"_"+fileName;
    }
}
