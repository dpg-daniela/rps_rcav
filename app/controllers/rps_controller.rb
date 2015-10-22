class RpsController < ApplicationController

def paper

	@paper = "Paper"
	@move = ["Rock", "Paper", "Scissors"].sample
	@image = @move.downcase
	@result = if @image=="paper"; "You tie" 
	elsif @image=="rock"; "You win" 
	elsif @image=="scissors"; "You lose" 
	end
	@color = if @image=="scissors"; "danger" 
	elsif @image=="rock"; "success" 
	elsif @image=="paper"; "warning" 

	end

	render("paper.html.erb")

end

def rock

	@rock = "Rock"
	@move = ["Rock", "Paper", "Scissors"].sample
	@image = @move.downcase
	@result = if @image=="rock"; "You tie" 
	elsif @image=="paper"; "You lose" 
	elsif @image=="scissors"; "You win" 
	end
	@color = if @image=="scissors"; "success" 
	elsif @image=="rock"; "warning" 
	elsif @image=="paper"; "danger" 

	end

	render("rock.html.erb")
end

def scissors

	@scissors = "Scissors"
	@move = ["Rock", "Paper", "Scissors"].sample
	@image = @move.downcase
	@result = if @image=="scissors"; "You tie" 
	elsif @image=="rock"; "You lose" 
	elsif @image=="paper"; "You win" 
	end
	@color = if @image=="scissors"; "warning" 
	elsif @image=="rock"; "danger" 
	elsif @image=="paper"; "success" 

	end

	render("scissors.html.erb")
end

end
