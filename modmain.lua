local function OverlayDisable(self, owner)
	self.Toggle = function(self, show, ...)
     
        if self.shown
        then
            self:Disable()
        end
	end
end

if CurrentRelease.GreaterOrEqualTo(ReleaseID.R34_OCEANQOL_WINONAWURT)
then
    AddClassPostConstruct("widgets/nightvisionfruitover", OverlayDisable)
end

AddGamePostInit(
    function()
        GLOBAL.PostProcessor:SetPostProcessingEnabled(false)
    end
)