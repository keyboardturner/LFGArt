--[[
Hello, and thank you for downloading my addon! I hope you like it! :)
]]--

--[[------------------------------------------------------------------------------------------------------------------]]--

--BG behind Dungeon Finder
local LFGArt = CreateFrame("Frame")
local QueueTexture = LFGArt:CreateTexture()
LFGArt:RegisterEvent("ADDON_LOADED")
LFGArt:RegisterEvent("LFG_UPDATE")
LFGArt:RegisterEvent("PLAYER_LOGIN")


LFGArt:SetScript("OnEvent", function(self, event, ...)
	QueueTexture:SetPoint("CENTER", LFDQueueFrameRandom, "CENTER", 0, -60)
	QueueTexture:SetSize(326, 252)
	QueueTexture:SetDrawLayer("ARTWORK", 0)
	QueueTexture:SetParent(LFDQueueFrameRandom)
	QueueTexture:SetTexture("Interface\\AddOns\\LFGArt\\Media\\LFGFrame.blp")
	QueueTexture:SetDrawLayer("BACKGROUND", -8)
	
	--[[ElvUI support;
	For some reason, it doesn't like to anchor to the spec frame by itself and requires extra touches.
	]]--
	
	--[[if IsAddOnLoaded("ElvUI") then
		if LFDQueueFrameRandom:IsShown() then
			QueueTexture:Show()
			QueueTexture:SetPoint("CENTER", LFDQueueFrameRandom, "CENTER", -20, 0) -- This is the anchor
			QueueTexture:SetSize(603, 460) --If there's a better method, I want to know. SetAllPoints is not good enough either.
			QueueTexture:SetParent(LFDQueueFrameRandom) -- This is required for it to pop up. Is not an anchor
			QueueTexture:SetDrawLayer("BACKGROUND", -8) -- This HAS to be here or it doesn't work. DO NOT CHANGE. (I think)
		end
	end
	
	--Aurora Support
	if IsAddOnLoaded("Aurora") then
			QueueTexture:SetPoint("CENTER", LFDQueueFrameRandom, "CENTER", 1, -1)
			QueueTexture:SetSize(645, 467)
			QueueTexture:SetParent(LFDQueueFrameRandom)
			QueueTexture:SetDrawLayer("BACKGROUND", -8)
	end
	
	--Skinner Support
	if IsAddOnLoaded("Skinner") then
			QueueTexture:SetPoint("CENTER", LFDQueueFrameRandom, "CENTER", 0, -3)
			QueueTexture:SetSize(641, 467)
			QueueTexture:SetParent(LFDQueueFrameRandom)
			QueueTexture:SetDrawLayer("BACKGROUND", -8)
	end]]--
	
end)

--[[------------------------------------------------------------------------------------------------------------------]]--

local SearchArt = CreateFrame("Frame")
local SearchTexture = SearchArt:CreateTexture()
SearchArt:RegisterEvent("ADDON_LOADED")
SearchArt:RegisterEvent("LFG_UPDATE")
SearchArt:RegisterEvent("PLAYER_LOGIN")

SearchArt:SetScript("OnEvent", function(self, event, ...)
	SearchTexture:SetPoint("CENTER", LFGListFrame.SearchPanel.SearchingSpinner, "CENTER", 3, 0)
	SearchTexture:SetSize(312, 320)
	SearchTexture:SetDrawLayer("ARTWORK", 0)
	SearchTexture:SetParent(LFGListFrame.SearchPanel.SearchingSpinner)
	SearchTexture:SetTexture("Interface\\AddOns\\LFGArt\\Media\\Metzen.blp")
	SearchTexture:SetDrawLayer("BACKGROUND", -8)
	
	--[[ElvUI support;
	For some reason, it doesn't like to anchor to the spec frame by itself and requires extra touches.
	]]--
	
	--[[if IsAddOnLoaded("ElvUI") then
			SearchTexture:SetPoint("CENTER", LFGListFrame.SearchPanel.SearchingSpinner, "CENTER", 1, -5) -- This is the anchor
			SearchTexture:SetSize(643, 470) --If there's a better method, I want to know. SetAllPoints is not good enough either.
			SearchTexture:SetParent(LFGListFrame.SearchPanel.SearchingSpinner) -- This is required for it to pop up. Is not an anchor
			SearchTexture:SetDrawLayer("BACKGROUND", -8) -- This HAS to be here or it doesn't work. DO NOT CHANGE. (I think)
	end
	
	--Aurora Support
	if IsAddOnLoaded("Aurora") then
			SearchTexture:SetPoint("CENTER", LFGListFrame.SearchPanel.SearchingSpinner, "CENTER", 1, -1)
			SearchTexture:SetSize(645, 467)
			SearchTexture:SetParent(LFGListFrame.SearchPanel.SearchingSpinner)
			SearchTexture:SetDrawLayer("BACKGROUND", -8)
	end
	
	--Skinner Support
	if IsAddOnLoaded("Skinner") then
			SearchTexture:SetPoint("CENTER", LFGListFrame.SearchPanel.SearchingSpinner, "CENTER", 0, -3)
			SearchTexture:SetSize(641, 467)
			SearchTexture:SetParent(LFGListFrame.SearchPanel.SearchingSpinner)
			SearchTexture:SetDrawLayer("BACKGROUND", -8)
	end]]
	
end)

--[[------------------------------------------------------------------------------------------------------------------]]--

--[[------------------------------------------------------------------------------------------------------------------]]--

--[[
I would like to thank everyone who helped me create this addon.
I've been hoping to do something like this for so long.
]]--
