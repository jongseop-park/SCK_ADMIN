package com.sck.admin.pkg.excel.controller;

import com.sck.admin.utils.FileUtils;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.ss.usermodel.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@RequestMapping("/excel")
@Controller
public class ExcelDownloadController {

    private final static Logger log = LoggerFactory.getLogger(ExcelDownloadController.class);

    private FileUtils fileUtils;

    @RequestMapping("/download")
    public void download(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String title = request.getParameter("title");
        List<String> header = Arrays.asList(request.getParameterValues("header[]"));
        List<String> body = Arrays.asList(request.getParameterValues("body[]"));
        int cellLen = Integer.parseInt(request.getParameter("cellLen"));


        // 워크북 생성
        Workbook workbook = new HSSFWorkbook(); // xls
        Sheet sheet = workbook.createSheet(title); // 시트명
        
        // 셀 스타일(헤드)
        CellStyle headStyle = workbook.createCellStyle();
        headStyle.setAlignment(HorizontalAlignment.CENTER); // 가운데 정렬
        headStyle.setVerticalAlignment(VerticalAlignment.CENTER); // 중앙 정렬

        // 셀 BackGround Color 지정
        headStyle.setFillForegroundColor(HSSFColor.HSSFColorPredefined.GREY_25_PERCENT.getIndex());
        headStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
        // 가는 경계선
        headStyle.setBorderTop(BorderStyle.THIN); 
        headStyle.setBorderBottom(BorderStyle.THIN);
        headStyle.setBorderLeft(BorderStyle.THIN);
        headStyle.setBorderRight(BorderStyle.THIN);

        //셀 스타일(바디)
        CellStyle bodyStyle = workbook.createCellStyle();
        bodyStyle.setBorderTop(BorderStyle.THIN);
        bodyStyle.setBorderBottom(BorderStyle.THIN);
        bodyStyle.setBorderLeft(BorderStyle.THIN);
        bodyStyle.setBorderRight(BorderStyle.THIN);

        Row row = null; // 헤더
        Cell cell = null; // 바디

        int rowCount = 1; // 행 카운트
        int colCount = 1; // 열 카운트
        boolean isRow = true; // 행 생성 bool값

        for(String str : header){ // 헤더 데이터 생성
            if(isRow) {
                row = sheet.createRow(rowCount); // 행
                isRow = false;
            }
            cell = row.createCell(colCount); // 열
            cell.setCellStyle(headStyle);
            cell.setCellValue(str);
            colCount++;
            if(colCount > cellLen){
                colCount = 1;
                rowCount++;
                isRow = true;
            }
        }

        for(String str : body){ // 바디 생성
            sheet.autoSizeColumn(colCount);
            if(isRow) {
                row = sheet.createRow(rowCount);
                isRow = false;
            }
            cell = row.createCell(colCount);
            cell.setCellStyle(bodyStyle);
            cell.setCellValue(str);
            colCount++;
            if(colCount > cellLen){
                colCount = 1;
                rowCount++;
                isRow = true;
            }
        }


        String path = "C:/upload/excel/"+fileUtils.getDate();
        String fileName = title + ".xls";
        File excelFilePath = new File(path);

        if(!excelFilePath.exists()){
            try {
                excelFilePath.mkdirs();

            } catch (Exception e){
                e.getStackTrace();
            }
        }

       try {
           File xlsFile = new File(path+fileName);
           FileOutputStream fileStream = new FileOutputStream(xlsFile);
           workbook.write(fileStream);
           fileStream.close();
           workbook.close();
       } catch (FileNotFoundException e) {
           e.printStackTrace();
       }

    }
}
