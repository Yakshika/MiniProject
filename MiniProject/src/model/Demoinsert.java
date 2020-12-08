package model;

import db.Questions;

import model.QuestionsDao;

public class Demoinsert {

	public static void main(String[] args) {
		Questions q = new Questions();
		q.setA("option1");
		q.setB("option2");
		q.setC("option3");
		q.setD("option4");
		q.setAnswer("option1");
		q.setQuestion("Friends uiuedii");
		
		boolean status = QuestionsDao.insertQuestion(q);

	}

}
