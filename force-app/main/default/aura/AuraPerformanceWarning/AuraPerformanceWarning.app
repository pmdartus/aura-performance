<aura:application extends="force:slds">
    <aura:attribute name="renderAuraIf" type="boolean" default="false"></aura:attribute>

    <div class="slds-container_large">
        <h1 class="slds-text-heading_large">Aura Performance Warnings</h1>

        <lightning:button variant="brand" label="Aura:if performance" onclick="{! c.handleClickAuraIf }" />

        <aura:if isTrue="{!v.renderAuraIf}">
            <c:AuraIfWarning></c:AuraIfWarning>
        </aura:if>
    </div>
</aura:application>	
