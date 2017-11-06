def shuffle array
  if array == []
    puts "No data"
    exit
  else
    recursive_shuffle array, []
  end
end

def recursive_shuffle u_array, s_array
  y = u_array[(rand(u_array.length - 1))]
  u_array.delete_at(u_array.find_index(y))
  s_array << y
  if u_array != []
    recursive_shuffle u_array, s_array
  else
    return s_array
  end
end

Dir.chdir "C:\\Users\\rskyt_000\\Downloads"
music_array = Dir["C:\\Users\\rskyt_000\\Downloads\\*"]
music_array = shuffle(music_array)
puts "Playlist name? : "
filename = "C:\\Users\\rskyt_000\\Music\\Playlists\\#{gets.chomp}.m3u"

File.open filename, 'w' do |f|
  music_array.each{|song| f.puts song}
end

puts (File.exist?(filename) ? "Playlist created!" : "Playlist not created.")