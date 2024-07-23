package com.practice.controller;

import com.practice.entity.Post;
import com.practice.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
public class HomePageController {

    private final PostService postService;

    public HomePageController(PostService postService) {
        this.postService = postService;
    }

    @GetMapping("/")
    public List<Post> homePage(){
        return postService.getPosts();
    }
//    @GetMapping("/add")
//    public String addPost(Model model){
//        model.addAttribute("post", new Post());
//        return "d";
//    }

    @PostMapping("/add")
    public Post SavePost(@RequestBody Post post){
        return postService.savePost(post);
    }
}
