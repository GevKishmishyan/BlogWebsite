package model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Post {

    private long id;
    private String title;
    private String text;
    private Category category;
    private long authorId;

}
