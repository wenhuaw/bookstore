package com.sap.cap.bookstore;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.UUID;

public class TestCsv {

	public static void main(String[] args) throws IOException {
        BufferedWriter out = new BufferedWriter(new FileWriter("/home/user/projects/bookstore/db/data/sap.capire.bookstore-Table1.csv"));

        for (int i = 0; i < 500000; i++) {
            String sql = UUID.randomUUID() + ";A"+i+";B"+i;
            System.out.println(sql);
            out.write(sql);
            out.newLine();
        }
        out.close();
	}

}
