package com.example.JobApp.JobApplicationForm;

import lombok.Getter;
import lombok.Setter;
import org.springframework.web.multipart.MultipartFile;

@Setter
@Getter
public class ApplicationForm
{
    private String name;
    private String address;
    private String email;
    private MultipartFile resume;
    private MultipartFile photo;
    private MultipartFile idProof;

}
