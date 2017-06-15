package com.bookstore.web.servlet;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;

import com.bookstore.domain.Product;
import com.bookstore.service.ProductService;


public class AddBookServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//创建一个DiskFileItemFactory工厂
		DiskFileItemFactory factory = new DiskFileItemFactory();
		//创建一个ServletFileUpload对象
		ServletFileUpload sfu = new ServletFileUpload(factory);
		sfu.setHeaderEncoding("UTF-8");//解决上传文件的乱码
		//解析request对象，返回所有表单项
		List<FileItem> fileItems = new ArrayList<FileItem>(0);
		//用于封装普通表单项的数据
		Map<String, String[]> map = new HashMap<String, String[]>();
		try {
			fileItems = sfu.parseRequest(request);
			
			//迭代fileItems表单项
			for (FileItem fileItem : fileItems) {
				if(fileItem.isFormField()){
					//普通表单项
					String name = fileItem.getFieldName();//得到字段的名
					String value = fileItem.getString("UTF-8");//得到字段值
					map.put(name, new String[]{value});//向map中赋值
					
				}else{
					//文件表单项
					InputStream inputStream = fileItem.getInputStream();
					String filename = fileItem.getName();//得到上传的文件名
					String extension = FilenameUtils.getExtension(filename);
					if(!("jsp".equals(extension)||"exe".equals(extension))){//上传的文件不能是jsp、exe
						//创建目录 
						File storeDirectory = new File(this.getServletContext().getRealPath("/upload"));
						if(!storeDirectory.exists()){
							storeDirectory.mkdirs();//如何目录不存在，就创建
						}
					//处理文件名
					if(filename!=null){
						filename = FilenameUtils.getName(filename);
					}
					// 目录打散
					//String childDirectory = makeChildDirectory(storeDirectory, filename); // a/b
					
					//filename = childDirectory+File.separator+filename;
					//文件上传 
					fileItem.write(new File(storeDirectory,filename));
					fileItem.delete();	//删除临时文件
					
					}
					map.put(fileItem.getFieldName(),new String[]{filename});//将图片表单项的name和value保存到map中
				}
			}
			
			Product book = new Product();
			BeanUtils.populate(book, map);
			book.setId(UUID.randomUUID().toString());//设置图书编号
			
			//调用业务逻辑
			ProductService ps = new ProductService();
			ps.addBook(book);
			
			//分发转向
									//不写/代表相对路径，相对于本类的路径
			request.getRequestDispatcher("bookListServlet").forward(request, response);
		} catch (FileUploadException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}	
		
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
