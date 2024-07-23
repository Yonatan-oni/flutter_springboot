package com.practice.service;

import com.practice.entity.Post;

import java.util.List;

public interface PostService {
    List<Post> getPosts();
    Post savePost(Post post);
}
