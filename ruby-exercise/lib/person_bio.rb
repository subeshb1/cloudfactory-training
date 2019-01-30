require 'date'
File.open('person_list.csv','r') do |in_file|
    File.open('person_bio.csv','w') do |out_file|
      out_file.puts "SN,Full Name,Age"
    count =0
    in_file.each_line do |line,index|
      if(count != 0 )
        line_arr = line.split(",")
        out_file.puts "#{line_arr[0]},#{line_arr[1] }"+" #{line_arr[2]} #{line_arr[3]}, #{DateTime.now.year -
        DateTime.parse(line_arr[4]).year}"
     end
     count+=1

    end
  end
end