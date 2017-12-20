<aura:application extends="force:slds">
    <aura:attribute name="isContentVisible" type="boolean" default="false"></aura:attribute>

    <div class="slds-container_large">
        <h1 class="slds-text-heading_large">Aura lifecycle</h1>

        <lightning:button variant="brand" label="Toggle visibility" onclick="{! c.handleClick }" />

        <aura:if isTrue="{!v.isContentVisible}">
            <c:List></c:List>
        </aura:if>
    </div>
</aura:application>
