package com.swayne.lokify.repositories;

import org.springframework.stereotype.Repository;

import java.util.List;

import com.swayne.lokify.models.Songs;

import org.springframework.data.repository.CrudRepository;

@Repository
public interface SongRepo extends CrudRepository<Songs,Long>{

    List<Songs> findAll();
    List<Songs> findTop10ByOrderByRatingDesc();
    List<Songs> findByArtistContaining(String artist);
}
