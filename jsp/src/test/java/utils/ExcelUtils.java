package utils;

import java.io.IOException;

import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class ExcelUtils {
	
	public static void main(String[] args) throws IOException {
		getRowCount();
		getCellData(); // 아래 getCellData 메소드에서 예외를 던지고 있기 때문에 메인에서도 던져야 오류가 안남
	}
	
	public static void getCellData() throws IOException {
		String excelPath = "./data/test.xlsx";
		XSSFWorkbook workbook = new XSSFWorkbook(excelPath);
		XSSFSheet sheet = workbook.getSheet("서");
		
		String value = sheet.getRow(1).getCell(0).getStringCellValue();
		double age = sheet.getRow(1).getCell(2).getNumericCellValue();
		System.out.println(value);
		System.out.println(age);
	}
	
	public static void getRowCount() {
		
		try {
		String excelPath = "./data/test.xlsx";
		XSSFWorkbook workbook = new XSSFWorkbook(excelPath);
		XSSFSheet sheet = workbook.getSheet("Sheet1");
		int rowCount = sheet.getPhysicalNumberOfRows();
		System.out.println("row 개수: "+ rowCount);
		
		}catch(Exception exp) {
			System.out.println(exp.getCause());
			System.out.println(exp.getMessage());
			exp.printStackTrace();
		}
		
		
		
	}
		
}
