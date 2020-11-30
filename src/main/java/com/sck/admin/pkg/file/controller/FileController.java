package com.sck.admin.pkg.file.controller;

import com.sck.admin.domain.File;
import com.sck.admin.utils.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/file")
public class FileController {

    private static final Logger log = LoggerFactory.getLogger(FileController.class);

    private FileUtils fileUtils;

    private String rootPath = "C:\\upload\\";

    @RequestMapping("/multiUpload")
    @ResponseBody
    public Map<String, Object> multiUpload(MultipartHttpServletRequest request) throws IOException {
        //MultipartHttpServletRequest > HttpServletRequest 대신 사용하며 HttpServletRequest와 MultipartRequest 인터페이스를 상속받음
        String[] seq = request.getParameterValues("seq");
        String groupSeq = request.getParameter("groupSeq"); // 그룹 시퀀스
        String adminId = request.getParameter("adminId");
        String[] orderNo = request.getParameterValues("orderNo");

        Map<String, Object> resultMap = new HashMap<>();
        List<File> fileUploadList = new ArrayList<>();
        List<MultipartFile> files = request.getFiles("file");

        int count = 0;
        for (MultipartFile file : files){
            String type = files.get(count).getContentType().split("/")[0]; // 파일 Type 저장
            String ext = files.get(count).getOriginalFilename().split("\\.")[1]; //  파일 확장자
            java.io.File path = new java.io.File(rootPath+type+fileUtils.getDate()); // rootPath + type
            String fileOrigName = files.get(count).getOriginalFilename(); // 실제파일명
            String fileName = fileUtils.getRandomString(fileOrigName); // 랜덤문자 + _실제파일명
            String uploadFile = path + "\\" + fileName; // 저장할 파일경로 + 파일명
            System.out.println(ext);
            if(!path.exists()){ // 파일 경로 확인 후 없을 시 폴더 생성
                try{
                    path.mkdirs();
                    log.info("폴더 생성 경로 : " + path);
                } catch (Exception e){
                    e.getStackTrace();
                }
            }

            if(type.equals("image")){ // 파일 타입이 이미지일 경우 이미지파일 생성
                log.info("파일 생성 경로 : " + uploadFile);
                file.transferTo(new java.io.File(uploadFile));

                File conn = new File();
                if(!groupSeq.equals("")){ // 수정일 시
                    conn.setGroupSeq(groupSeq);
                    conn.setModId(adminId);
                } else {
                    conn.setRegId(adminId);
                }
                conn.setSeq(seq[count]);
                conn.setFileName(fileName);
                conn.setFileOrigName(fileOrigName);
                conn.setFilePath(path+"\\");
                conn.setFileType(ext);
                conn.setFileSize(files.get(count).getSize()+"");
                conn.setOrderNo(orderNo[count]);

                fileUploadList.add(conn);
            } else {
                resultMap.put("result","Data Not Exist");
                return resultMap;
            }
            count++;
        }
        resultMap.put("result",fileUploadList);

        return resultMap;
    }
}
// String saveDirectory = request.getSession().getServletContext().getRealPath("/resources/static/images"); 상대경로
// spector : 경로구분자(\)