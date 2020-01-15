package kr.or.hanium.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.validation.constraints.NotNull;

@ToString
@Setter
@Getter
public class LoginDTO {

    private String uemail;
    private String upasswd;
}
