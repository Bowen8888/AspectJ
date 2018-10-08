package Assignment1;

public class Task4 {
	
	int score;
	
	@ObjectConstruction
	public Task4(int score) {
		this.score = score;
	}
	
	@MethodOperation
	public void addScore(int amount) {
		score+=amount;
	}
	
	@MethodOperation
	public void minusScore(int amount) {
		score+=amount;
	}
	
	public String toString() {
		return "Task4 with score:" + score;
	}

}
