module SongsHelper
    def artist_select(form_item, song)
        if song.artist.nil?
          form_item.label :artist_name
          select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
        else
          hidden_field_tag "song[artist_id]", song.artist_id
        end
      end

end
