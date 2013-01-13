module RecordStore
  Posts = Posts.new([
    Post.from_hash(:title => "Top 5 Indie Games of 2012",
                   :body  => %Q{
<p>On trying to write my top 5 games of last year, I realized the great divide that I had between so called "AAA" games and indie titles. 2012 was a great year for indie games and I can only hope this trend continues into 2013, and although 2012 was also a great year for AAA releases, I think its best for me to focus on the indie games that left a mark with myself. However, if you are looking for recommendations, I can say that I enjoyed a game ending in <a href="http://www.shacknews.com/game/halo-4">four</a>, <a href="http://www.shacknews.com/game/far-cry-3">two</a> <a href="http://www.shacknews.com/game/mass-effect-3">games</a> ending in three, one game ending in <a href="http://www.shacknews.com/game/borderlands-2">two</a>, and a few without <a href="http://www.shacknews.com/game/dishonored">any</a> <a href="http://www.shacknews.com/game/xcom">numbers</a> at all.</p>

<p>In no particular order...</p>
<p><a href="http://www.shacknews.com/game/ftl-faster-than-light"><h2>FTL: Faster Than Light</h2><img src="/images/ftl.png" /></a>
  FTL was the kind of game that I would start playing and give myself 20 mins and when I looked at the clock I had been playing for 2 hours. For a brutally hard game with perma-death, the entire experience is overwhelming fun with its mix of strategy and decision making. Its a roque-like in space and you are the captain of your own starship. A fun and unique experience and one I'm really glad I didn't pass up on.
</p>

<p><a href="http://www.shacknews.com/game/fez"><h2>Fez</h2><img src="/images/fez.png" /></a>
  For me, above everything else, Fez is such a truly beautiful game to just look at. Between its awesome soundtrack and methodical game play, playing Fez could almost be seen as a therapeutic experience. Once you go past the surface of the game and get further into the story, you see how deep this game delves into the history of games and what games are. I've heard it said that Fez is a love letter to all the games we played growing up and I couldn't say it any better myself.
</p>

<p><a href="http://www.shacknews.com/game/spelunky"><h2>Spelunky</h2><img src="/images/spelunky.jpg" /></a>
  Roguelikes must be making some sort of a comeback in the indie scene as spelunky also takes on that moniker. Unlike FTL, spelunky is a precision platformer game without an ounce of forgiveness and it makes you okay with that fact. Its one of the only games I know of that can cause you to sink 10+ hours into the game and still be stuck on the first level without wanting to give up. Every mistake that causes your untimely death is always a mistake you know was your fault and you could have prevented if you had been more careful. So next time, thats the time you'll be more careful. The addition of coop also adds a new level of fun and depth to the game and is probably the reason it made it on the list.
</p>

<p><a href="http://www.shacknews.com/game/hotline-miami"><h2>Hotline Miami</h2><img src="/images/hotline-miami.jpg"></a>
  This game came out of nowhere. I'm still not sure that I entirely know what Hotline Miami was, except for one of the most brutal, visceral, violent, psychedelic, and immersive games that I played this year. I beat the entire game in a single sitting, because I simply couldn't pull myself away from it. The fast paced, top down, insta-death, twitch shooter/skull-smasher action of the game is an enthralling adventure in trial and error. Instance respawns make the hundreds of deaths bearable as you attempt to beat any level. Between the levels the morbid story of what is really going on is teased and always leaves you guessing.
</p>

<p><a href="http://www.shacknews.com/game/orcs-must-die-2"><h2>Orcs Must Die 2</h2><img src="/images/orcs-must-die-2.jpg" /></a>
  Can a game survive solely on its multiplayer? I'm not sure, but I don't think I wouldn't have loved orcs must die 2 if it wasn't for its amazing coop experience. In OMD2 you are playing a tower defense game from a 3rd person perspective, hopefully with a buddy, and thats it. It may seem simple, and it is, but that is to its benefit. The creative combinations of enemies, traps, powers, and abilities make for night after night of fun.
</p>

I feel its appropriate to say that I fully believe that both Journey and The Walking Dead would have made this list if I had played them. Thats on my agenda for the rest of this year.},
                   :date => "1-12-2013",
                   :tags => ["Gaming", "Indie"]),
    Post.from_hash(:title=> "New Year and New Things",
                   :body => "<p>Trying to start the new year off the right way with a long overdue redesign of the site.
                   I'm happy with how things have turned out so far, but I wnated to take this interatively and will be gradually
                   tweaking and addings things as times goes on.
                   The focus was much more on how little I need than what can I add.</p>",
                   :date => "1-6-2013",
                   :tags => ["Design"]),

  ])

  NOTFOUND = Post.from_hash(:title => "404 and Such.", :body => "Sorry, it looks like this post doesn't exist. Are you sure it's typed correctly?", :date => "12-31-1999", :tags => %w[404 error lost])
end
