package com.sck.admin.pkg.file.controller;

import com.sck.admin.domain.File;
import com.sck.admin.pkg.file.service.FileService;
import com.sck.admin.utils.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
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

    @Autowired
    public FileService fileService;

    private static final Logger log = LoggerFactory.getLogger(FileController.class);

    private FileUtils fileUtils;

    private String rootPath = "C:\\upload\\";

    @RequestMapping("/multiUpload")
    @ResponseBody
    public Map<String, Object> multiUpload(MultipartHttpServletRequest request) throws IOException {
        //MultipartHttpServletRequest > HttpServletRequest 대신 사용하며 HttpServletRequest와 MultipartRequest 인터페이스를 상속받음
        String groupSeq = request.getParameter("groupSeq"); // 그룹 시퀀스
        String adminId = request.getParameter("adminId"); // 등록자 아이디
        String[] seq = request.getParameterValues("seq"); // 시퀀스
        String[] orderNo = request.getParameterValues("orderNo"); // 이미지 순서

        Map<String, Object> resultMap = new HashMap<>();
        List<File> fileUploadList = new ArrayList<>();
        List<MultipartFile> files = request.getFiles("file");

        int count = 0;
        for (MultipartFile file : files){
            String type = files.get(count).getContentType().split("/")[0]; // 파일 Type 저장
            String ext = files.get(count).getOriginalFilename().split("\\.")[1]; //  파일 확장자
            java.io.File path = new java.io.File(rootPath+type+fileUtils.getDate()); // rootPath + type
            String fileOrigNm = files.get(count).getOriginalFilename(); // 실제파일명
            String fileNm = fileUtils.getRandomString(fileOrigNm); // 랜덤문자 + _실제파일명
            String uploadFile = path + "\\" + fileNm; // 저장할 파일경로 + 파일명
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
                conn.setSeq(seq[count]);
                conn.setGroupSeq(groupSeq);
                conn.setFileNm(fileNm);
                conn.setFileOrigNm(fileOrigNm);
                conn.setFilePath(path+"\\");
                conn.setFileType(ext);
                conn.setFileSize(files.get(count).getSize()+"");
                conn.setOrderNo(orderNo[count]);

                if(seq[count].equals("")){ // 저장
                    conn.setRegId(adminId);
                    fileService.insert(conn);
                } else {                   // 수정
                    conn.setModId(adminId);
                    fileService.update(conn);
                }



                fileUploadList.add(conn);
            } else {
                resultMap.put("result","Data Not Exist");
                return resultMap;
            }
            System.out.println(fileUploadList.get(count).getSeq());
            count++;
        }
        resultMap.put("result",fileUploadList);
        return resultMap;
    }
}
// String saveDirectory = request.getSession().getServletContext().getRealPath("/resources/static/images"); 상대경로
// spector : 경로구분자(\)