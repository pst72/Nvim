print("Welcome to the game.")

local input = ""
while input ~= "leave cave" do
 
print("What do you want to do?")
local input = io.read()
if input == "inspect" then
  print("You are in a cave.")
end

print("What do you want to do?")
input = io.read()

if input == "leave cave" then
  print("You leave the cave")
end

end
print("What do you want to do?")
input = io.read()

if input == "inspect" then
  print("You are at the base of a hill.")
end

























