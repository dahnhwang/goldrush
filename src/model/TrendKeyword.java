package model;

public class TrendKeyword {

	private int k_id;
	private String k_month;
	private String keyword1;
	private String keyword2;
	private String keyword3;
	private String keyword4;
	private String keyword5;
	private int keyword1_freq;
	private int keyword2_freq;
	private int keyword3_freq;
	private int keyword4_freq;
	private int keyword5_freq;

	public int getK_id() {
		return k_id;
	}

	public void setK_id(int k_id) {
		this.k_id = k_id;
	}

	public String getK_month() {
		return k_month;
	}

	public void setK_month(String k_month) {
		this.k_month = k_month;
	}

	public String getKeyword1() {
		return keyword1;
	}

	public void setKeyword1(String keyword1) {
		this.keyword1 = keyword1;
	}

	public String getKeyword2() {
		return keyword2;
	}

	public void setKeyword2(String keyword2) {
		this.keyword2 = keyword2;
	}

	public String getKeyword3() {
		return keyword3;
	}

	public void setKeyword3(String keyword3) {
		this.keyword3 = keyword3;
	}

	public String getKeyword4() {
		return keyword4;
	}

	public void setKeyword4(String keyword4) {
		this.keyword4 = keyword4;
	}

	public String getKeyword5() {
		return keyword5;
	}

	public void setKeyword5(String keyword5) {
		this.keyword5 = keyword5;
	}

	public int getKeyword1_freq() {
		return keyword1_freq;
	}

	public void setKeyword1_freq(int keyword1_freq) {
		this.keyword1_freq = keyword1_freq;
	}

	public int getKeyword2_freq() {
		return keyword2_freq;
	}

	public void setKeyword2_freq(int keyword2_freq) {
		this.keyword2_freq = keyword2_freq;
	}

	public int getKeyword3_freq() {
		return keyword3_freq;
	}

	public void setKeyword3_freq(int keyword3_freq) {
		this.keyword3_freq = keyword3_freq;
	}

	public int getKeyword4_freq() {
		return keyword4_freq;
	}

	public void setKeyword4_freq(int keyword4_freq) {
		this.keyword4_freq = keyword4_freq;
	}

	public int getKeyword5_freq() {
		return keyword5_freq;
	}

	public void setKeyword5_freq(int keyword5_freq) {
		this.keyword5_freq = keyword5_freq;
	}

	@Override
	public String toString() {
		return "TrendKeyword [k_id=" + k_id + ", k_month=" + k_month + ", keyword1=" + keyword1 + ", keyword2="
				+ keyword2 + ", keyword3=" + keyword3 + ", keyword4=" + keyword4 + ", keyword5=" + keyword5
				+ ", keyword1_freq=" + keyword1_freq + ", keyword2_freq=" + keyword2_freq + ", keyword3_freq="
				+ keyword3_freq + ", keyword4_freq=" + keyword4_freq + ", keyword5_freq=" + keyword5_freq + "]";
	}

}
