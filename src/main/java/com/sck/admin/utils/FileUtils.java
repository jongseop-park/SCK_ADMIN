package com.sck.admin.utils;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.UUID;

public class FileUtils {

    /*public static String getCalendar(){ // 년월일시분
        String now = "";
        Calendar cal = Calendar.getInstance();
        SimpleDateFormat sdf = new SimpleDateFormat("yyMMddHHmm");
        now = sdf.format(cal.getTime());

        return now;
    }*/

    public static String getRandomString(String fileName){ // 랜덤문자 생성
        return UUID.randomUUID().toString().replaceAll("-","")+"_"+fileName;
    }
}
