package ip.filter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;


public class BlackList {
	
	private static BlackList instance = new BlackList();

    private static List<String> listIp = new ArrayList<String>();

    public static BlackList getInstance() {
        return instance;
    }

    private BlackList() {
    	File file = new File(BLACKLIST);
    }
	
	private static final String BLACKLIST = "D:/blackList.txt";
	
	private FileWriter writer;
	
	private FileReader reader;
	
	private Scanner scanner;
	
	public Scanner getScanner() throws FileNotFoundException {
		return new Scanner(this.getReader());
	}

	public void setScanner(Scanner scanner) {
		this.scanner = scanner;
	}

	public FileWriter getWriter() throws IOException {
		return new FileWriter(BLACKLIST);
	}

	public void setWriter(FileWriter writer) {
		this.writer = writer;
	}

	public FileReader getReader() throws FileNotFoundException {
		return new FileReader(BLACKLIST);
	}

	public void setReader(FileReader reader) {
		this.reader = reader;
	}

	public void addIp(String ip){
		try {
			
			writer = this.getWriter();
			scanner = this.getScanner();
			
			if(validatelPAddress(ip)) {
				if(!listIp.contains(ip) && ip.length() != 0)
					listIp.add(ip);
			}
			
			for(String s: listIp)
			writer.write(s + "\r\n");
			
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				scanner.close();
				writer.flush();
				writer.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	public void removeIp(String ip){
		
		try {
			writer = this.getWriter();
			scanner = this.getScanner();
					
			if(listIp.contains(ip))
				listIp.remove(ip);
					
			BlackList.getInstance().removeAllIp();
			
			for(String str: listIp){
				writer.write(str + "\r\n");
			}
			
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				scanner.close();
				writer.flush();
				writer.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
			
		}
	}
	
	public void removeAllIp(){
		PrintWriter pw = null;
		try {
			pw = new PrintWriter(BLACKLIST);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} finally {
			pw.close();	
		}
	}
	
	public ArrayList<String> allBlacklist(){
		try {
			scanner = this.getScanner();
			listIp.clear();
		while(scanner.hasNextLine())
				listIp.add(scanner.nextLine());
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} finally {
				scanner.close();
		}
		return (ArrayList<String>) this.listIp;
	}
	
	private static boolean validatelPAddress(String ipAddress){

		String[] tokens = ipAddress.split("\\."); 
		if (tokens.length != 4) { 
			return false; 
			}
		for (String str : tokens) { 
			int i = Integer.parseInt(str);
			if ((i < 0) || (i > 255)) {
				return false; 
				} 
			}
		return true;
		}
}
