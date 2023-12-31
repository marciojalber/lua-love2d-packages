--[[
PROPS
   underGravity   Sob gravidade
   velocityY      Velocidade da queda

CONDICOES
   underGravity   != true
]]--

local function jumpAction(this, keys)
   if this.underGravity == nil then
      error("Valor inexistente para [this.underGravity]")
   end

   if this.velocityY == nil then
      error("Valor inexistente para [this.velocityY]")
   end

   return function(dt)
      if not this.underGravity then
         return
      end

      if this.onFloor and this.underGravity then
         this.velocityY = -gravity / 10 * (1 - (1 - this.jumpHeight)/3)
         this.onFloor   = false
      end
   end
end

return jumpAction
