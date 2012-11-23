cvars.p_drawCollisionGeometry = 1
cvars.p_drawCollisionInfo = 1
cvars.p_iterations = 2
--spawnBox(0,0,0, 1/0.1)
--spawnBox(2.1,0,0, 1/0.1)
--spawnBox(-2.1,0,0, 1/0.1)
--spawnBox(-1.1,2,0, 1/0.1)
--spawnBox(1.1,2,0, 1/0.1)

function plane()
  spawnPlane(0,-1,0, 0)
end

function stack(height)
  for i=1,height do
    spawnBox(0, 4 + i * 3, 0.01 * i, 1/1)
  end
end

function diagonalStack()
  spawnBox(-0.2, 4, 0, 1/1)
  spawnBox(0.05, 7, 0.9, 1/1)
  spawnBox(0.3, 10, 2.1, 1/1)
end

function pyramid()
  spawnBox(0,3,0, 1/1)
  spawnBox(2.1,3,0, 1/1)
  spawnBox(-2.1,3,0, 1/1)
  spawnBox(-1.1,6,0, 1/1)
  spawnBox(1.1,6,0, 1/1)	
  spawnBox(0,9,0, 1/1)
  spawnBox(0.01,40,0.01, 1/1)
end

function rotatedChest(angel)
  local chestId = spawnBox(0,3,0, 1/1)
  rotate(chestId, 1,0,0, angel)
end

function oneChest()
   spawnBox(0,3,0, 1/1)
end

function throwChest()
  local boxId = spawnBox(0,3,10, 1/10)
  setVelocity(boxId, 0,0,-20)
end

function rotatedStack()
  local chest1Id = spawnBox(0, 4, 0, 1/1)
  local chest2Id = spawnBox(0.01, 7, 0.01, 1/1)
  rotate(chest1Id, 1,0,0,-25)
  rotate(chest2Id, 0,0,1,15)
end

function slope(angel)
  local plane2Id = spawnPlane(0,0,0,0)
  rotate(plane2Id, 1, 0, 0, angel)
end

function test1()
  resetWorld()
  rotatedStack()
  spawnPlane(0,-1,0, 0)
end

function test2()
  resetWorld()
  oneChest()
  slope(-30)
  spawnPlane(0,-1,0, 0)
end

function test3()
  resetWorld()
  pyramid()
  spawnPlane(0,-1,0, 0)
end

function test4()
  resetWorld()
  spawnPlane(0,-1,0,0)
  spawnBox(0,1,0,1/1)
  spawnBox(0.01,1.6,0,1/1)
end

function test5()
  resetWorld()
  spawnPlane(0,-1,0,0)
  spawnBox(0,0.5,0,1/1)
  spawnBox(0.01,1.5,0,1/1)
  spawnBox(-0.01,2.5,0,1/1)
end

function test6()
  resetWorld()
  spawnPlane(0,-1,0,0)
  slope(-30)
  local chestId = spawnBox(0,11,-10, 1/1)
  rotate(chestId, 1,0,0, -30)
end

function test7()
  cvars.p_gravity = 0
  resetWorld()
  spawnPlane(0,-1,0,0)
  spawnBox(0,3,0, 1/1)
  local boxId = spawnBox(0, 3.01, 3, 1/1)
  setVelocity(boxId, 0,0,-10)
end

function test8()
  resetWorld()
  spawnPlane(0,-1,0,0)
  stack(2)
end

test7()

