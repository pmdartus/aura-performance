<aura:application extends="force:slds">
    <aura:attribute name="isListVisible" type="boolean" default="false"></aura:attribute>
    <aura:attribute name="isDelayedListVisible" type="boolean" default="false"></aura:attribute>

    <div class="slds-container_large">
        <h1 class="slds-text-heading_large">Aura lifecycle</h1>

        <lightning:button variant="brand" label="Toggle List" onclick="{! c.handleClick }" />
        <lightning:button variant="brand" label="Toggle Delayed List" onclick="{! c.handleClickDelayed }" />

        <aura:if isTrue="{!v.isListVisible}">
            <c:List></c:List>
        </aura:if>

        <aura:if isTrue="{!v.isDelayedListVisible}">
            <c:DelayedList></c:DelayedList>
        </aura:if>
    </div>
</aura:application>
