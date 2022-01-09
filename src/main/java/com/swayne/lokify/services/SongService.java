package com.swayne.lokify.services;

import java.util.List;

import com.swayne.lokify.models.Songs;
import com.swayne.lokify.repositories.SongRepo;

import org.springframework.stereotype.Service;

@Service
public class SongService {
    private final SongRepo songRepo;

    public SongService(SongRepo song){
        this.songRepo=song;
    }

    public List<Songs> getAll(){
        return songRepo.findAll();
    }
    public List<Songs> findArtist(String artist){
        return songRepo.findByArtistContaining(artist);
    }
    public List<Songs> topTen(){
        return songRepo.findTop10ByOrderByRatingDesc();
    }

    public Songs getOne(Long id){
        return songRepo.findById(id).orElse(null);
    }

    public Songs create(Songs s){
        return songRepo.save(s);
    }

    public Songs update(Songs s){
        return songRepo.save(s);
    }
    public void delete(Long id){
        songRepo.deleteById(id);
    }


}
