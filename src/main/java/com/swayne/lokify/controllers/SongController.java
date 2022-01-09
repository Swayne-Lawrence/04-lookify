package com.swayne.lokify.controllers;

import java.util.List;

import javax.validation.Valid;

import com.swayne.lokify.models.Songs;
import com.swayne.lokify.services.SongService;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SongController {
    private final SongService songService;

    public SongController(SongService song){
        this.songService = song;
    }
    @GetMapping("/")
    public String home(){
        return "index.jsp";
    }

    @GetMapping("/create")
    public String create(@ModelAttribute("song") Songs song){
        return "create.jsp";
    }
    @PostMapping("/form")
    public String form(@Valid @ModelAttribute("song") Songs song, BindingResult result){
        if(result.hasErrors()){
            return "create.jsp";
        }

        Songs temp=songService.create(song);
        String id= String.valueOf(temp.getId());
        return "redirect:/summary/"+id;
    }

    @GetMapping("/summary/{id}")
    public String summary(@PathVariable("id") Long id,Model model){
        model.addAttribute("songVar", songService.getOne(id));
        return "summary.jsp";
    }

    @GetMapping("/dashboard")
    public String dashBoard(Model model){
        List<Songs> list=songService.getAll();
        model.addAttribute("songVar",list);
        return "dashboard.jsp";
    }

    @GetMapping("/searched")
    public String searched(@RequestParam("artist") String artist, Model model){
        model.addAttribute("songVar", songService.findArtist(artist));
        model.addAttribute("name", artist);
        return "searched.jsp";
    }

    @PostMapping("/delete/{id}")
    public String delete(@PathVariable("id") Long id){
        songService.delete(id);
        return "redirect:/dashboard";
    }

    @GetMapping("/topten")
    public String topTen(Model model){
        model.addAttribute("songVar", songService.topTen());
        return "topten.jsp";

    }

}
