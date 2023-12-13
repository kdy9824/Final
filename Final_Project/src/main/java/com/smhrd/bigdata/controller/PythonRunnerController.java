package com.smhrd.bigdata.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.BufferedReader;
import java.io.InputStreamReader;

@RestController
public class PythonRunnerController {

    @GetMapping("/runPython")
    public String runPythonScript() {
        try {
            ProcessBuilder processBuilder = new ProcessBuilder("python", "test.py");
            Process process = processBuilder.start();

            BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
            StringBuilder result = new StringBuilder();
            String line;

            while ((line = reader.readLine()) != null) {
            	System.out.println(line);
                result.append(line).append("\n");
            }
            return "Python script executed successfully!";
        } catch (Exception e) {
            e.printStackTrace();
            return "Error occurred while running Python script";
        }
    }
}