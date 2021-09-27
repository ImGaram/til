package baekjoon;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.StringTokenizer;

public class Main {
	public static void main(String[] args) throws IOException{
		BufferedReader a=new BufferedReader(new InputStreamReader(System.in));
		BufferedWriter aa=new BufferedWriter(new OutputStreamWriter(System.out));
		StringTokenizer st;
		int i=Integer.parseInt(a.readLine());
		
		for (int j = 0; j < i; j++) {
			
			st=new StringTokenizer(a.readLine());
			aa.write((Integer.parseInt(st.nextToken())+Integer.parseInt(st.nextToken()))+"\n");
			//aa.flush();
		}
		aa.close();
	}
	
}
