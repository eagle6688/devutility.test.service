package devutility.test.service;

/**
 * Hello world!
 *
 */
public class App {
	public static void main(String[] args) {
		for (int i = 0; i < 30; i++) {
			try {
				Thread.sleep(3000);
				System.out.println("Hello World!");
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
	}
}