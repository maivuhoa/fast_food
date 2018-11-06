package com.project.fastfood.controllers;

import com.project.fastfood.entities.PostsEntity;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class PublicPostPageController extends PublicSuperControler{
    @GetMapping("/discount")
    public String responseListPosts(HttpServletRequest request, ModelMap modelMap) {
        List<PostsEntity> posts = postsService.findAllByType(0);
        PagedListHolder pagedListHolder = new PagedListHolder(posts);
        int page = ServletRequestUtils.getIntParameter(request, "page", 0);
        pagedListHolder.setPage(page);
        pagedListHolder.setPageSize(3);
        modelMap.addAttribute("pagedListHolder", pagedListHolder);
        return "public.discount.index";
    }

    @GetMapping("/discount/{postId}")
    public String responsePostDetail(@PathVariable("postId") int postId, ModelMap modelMap) {
        PostsEntity postsEntity = postsService.findPostById(postId);
        modelMap.addAttribute("postEntity", postsEntity);
        responsePostNewest(modelMap);
        return "public.discount.detail";
    }

    private void responsePostNewest(ModelMap modelMap) {
        List<PostsEntity> posts = postsService.findAllPostNewest();
        modelMap.addAttribute("postEntityNewest", posts);
    }
}
