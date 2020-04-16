package com.bs.sys.common;

import com.bs.sys.common.excel.ExcelUtil;
import com.bs.sys.vo.UsersExcelVo;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

public class UsersExcelParse {
    public static List<UsersExcelVo> ExceltoUserExcelVo(File userUploadFile){
        List<UsersExcelVo> list=new ArrayList<UsersExcelVo>();
        UsersExcelVo usersExcelVo=null;
        try {
            POIFSFileSystem fs = new POIFSFileSystem(new FileInputStream(userUploadFile));
            HSSFWorkbook wb = new HSSFWorkbook(fs);
            //获取第一个sheet页
            HSSFSheet sheet = wb.getSheetAt(0);
            if(sheet!=null){
                for(int rowNum =1;rowNum<=sheet.getLastRowNum();rowNum++){
                    HSSFRow row = sheet.getRow(rowNum);
                    if(row==null){
                        continue;
                    }
                    usersExcelVo=new UsersExcelVo();
                    //将单元格里每行数据存入usersExcelVo对象中
                    usersExcelVo.setName(ExcelUtil.formatCell(row.getCell(0)));
                    usersExcelVo.setLoginname(ExcelUtil.formatCell(row.getCell(1)).split("\\.")[0]);
                    usersExcelVo.setDeptname(ExcelUtil.formatCell(row.getCell(2)));
                    usersExcelVo.setMgrname(ExcelUtil.formatCell(row.getCell(3)).split("\\.")[0]);
                    usersExcelVo.setRemark(ExcelUtil.formatCell(row.getCell(4)));
                    usersExcelVo.setAddress(ExcelUtil.formatCell(row.getCell(5)));
                    usersExcelVo.setRolename(ExcelUtil.formatCell(row.getCell(6)));
                    list.add(usersExcelVo);
                }
            }
        }  catch (IOException e) {
            e.printStackTrace();
        }
        return list;
    }
}
