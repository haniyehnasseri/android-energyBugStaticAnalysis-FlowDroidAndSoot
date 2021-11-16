package soot.jimple.infoflow.android.Excel;

import java.io.File;
import java.io.FileOutputStream;

import java.util.*;

import com.sun.media.sound.InvalidFormatException;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.util.*;


import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

import org.apache.poi.EncryptedDocumentException;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;

import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import soot.jimple.infoflow.android.*;
import soot.jimple.infoflow.android.Analysis.ResourceLeakAnalysis.resourceLeakAnalysis;

/**
 * This program illustrates how to update an existing Microsoft Excel document.
 * Append new rows to an existing sheet.
 *
 * @author www.codejava.net
 *
 */
public class ExcelUtil {

    public static void main(String[] args) throws IOException {

        String resultsFileStr = "results.xlsx";
        File excelFile = new File(resultsFileStr);
        boolean fileExist = excelFile.exists();

        XSSFWorkbook workbook = null;
        XSSFSheet sheet = null;
        if(fileExist) {
            FileInputStream fis = new FileInputStream(excelFile);
            workbook = new XSSFWorkbook(fis);
            sheet = workbook.getSheetAt(0);
        }

        else {
            workbook = new XSSFWorkbook();
            sheet = workbook.createSheet("Leaks");
        }

//        Object[][] bookData = {
//                {"X", "Y", "Z"},
//                {"Head First Java", "Kathy Serria", 79},
//                {"Effective Java", "Joshua Bloch", 36},
//                {"Clean Code", "Robert martin", 42},
//                {"Thinking in Java", "Bruce Eckel", 35},
//        };
//
//        List<Object[]> bookDataList =  Arrays.asList(bookData);






        int rowCount = -1;
        if(fileExist)
            rowCount = sheet.getLastRowNum();

        if(rowCount == -1){
            Row row = sheet.createRow(++rowCount);
            Object[] columns = {"App name", "Concerned Class", "Buggy file", "Buggy Callback Method", "Buggy Method", "Result"};
            createNewRow(row, columns);
        }

        for (String res : haniyehUtil.getInstance().finalResults) {
            Row row = sheet.createRow(++rowCount);
            List<Object> objects = new ArrayList<Object>();
            objects.add(haniyehTest.apk);
            objects.add(resourceLeakAnalysis.getResource().getName());
            String[] aspects = res.split("&");
            objects.add(aspects[0]);
            objects.add(aspects[1].split("-")[0]);
            objects.add(aspects[1].split("-")[1]);
            objects.add(aspects[2]);
            createNewRow(row, objects.toArray());

        }


        FileOutputStream outputStream = new FileOutputStream(resultsFileStr);
        workbook.write(outputStream);
        workbook.close();
        outputStream.close();


    }

    private static void createNewRow(Row row, Object[] columns) {
        int columnCount = -1;

        for (Object field : columns) {
            Cell cell = row.createCell(++columnCount);
            if (field instanceof String) {
                cell.setCellValue((String) field);
            } else if (field instanceof Integer) {
                cell.setCellValue((Integer) field);
            }
        }
    }

}
