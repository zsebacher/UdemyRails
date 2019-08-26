3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end


10.times do |blog|
    Blog.create!(
        title: "My Blog Post #{blog}",
        body: "Lorem ipsum dolor amet shoreditch tacos art party hoodie mumblecore wayfarers umami listicle vinyl DIY gluten-free next level lomo put a bird on it pork belly. Fanny pack cold-pressed messenger bag blog tacos synth. Small batch viral affogato freegan pitchfork semiotics etsy mustache godard fashion axe. Forage drinking vinegar seitan gochujang, VHS vexillologist bicycle rights edison bulb tilde YOLO tousled ethical.",
        topic_id: Topic.first.id
    )
end

puts "10 blog posts created"

5.times do |skill|
    Skill.create!(
        title: "Rails #{skill}",
        percent_utilized: 15
    )
end

puts "5 skills created"

9.times do |p|
    Portfoliio.create!(
        title: "Portfolio title: #{p}",
        subtitle: "Ruby On Rails",
        body: "Lorem ipsum dolor amet shoreditch tacos art party hoodie mumblecore wayfarers umami listicle vinyl DIY gluten-free next level lomo put a bird on it pork belly. Fanny pack cold-pressed messenger bag blog tacos synth. Small batch viral affogato freegan pitchfork semiotics etsy mustache godard fashion axe. Forage drinking vinegar seitan gochujang, VHS vexillologist bicycle rights edison bulb tilde YOLO tousled ethical.",
        main_image: "https://via.placeholder.com/600x400",
        thumbnail: "https://via.placeholder.com/150"
    )
end


1.times do |p|
    Portfoliio.create!(
        title: "Portfolio title: #{p}",
        subtitle: "Angular",
        body: "Lorem ipsum dolor amet shoreditch tacos art party hoodie mumblecore wayfarers umami listicle vinyl DIY gluten-free next level lomo put a bird on it pork belly. Fanny pack cold-pressed messenger bag blog tacos synth. Small batch viral affogato freegan pitchfork semiotics etsy mustache godard fashion axe. Forage drinking vinegar seitan gochujang, VHS vexillologist bicycle rights edison bulb tilde YOLO tousled ethical.",
        main_image: "https://via.placeholder.com/600x400",
        thumbnail: "https://via.placeholder.com/150"
    )
end

puts "10 portfolios created"
