

public class Test {
	public static void main(String[] args) {
		for(int i=1; i<=100000; i++) {
			String[] arr = args[0].split("\\.");
			int num = 0;	//小数点后面几位数字
			if(arr.length == 2) {
				num = arr[1].length();
			}
			int power = 1;
			for(int j=0; j<num; j++) {
				power *= 10;
			}
			int a = (int)(Math.random()*100*power);
			double gailv = Double.parseDouble(args[1]);
			if(a >= gailv*power) {	//不触发
				//System.out.println("不-"+a);
			} else {
				System.out.println("【出】-"+a);
			}
		}
	}
}
