<aura:application extends="force:slds">
    <aura:attribute name="renderAuraIf" type="boolean" default="false"></aura:attribute>
    <aura:attribute name="renderAuraIteration" type="boolean" default="false"></aura:attribute>

    <div class="slds-container_large">
        <h1 class="slds-text-heading_large">Aura Performance Warnings</h1>

        <lightning:button variant="brand" label="Aura:if performance warning" onclick="{! c.handleClickAuraIf }" />
        <lightning:button variant="brand" label="Aura:iteration performance warning" onclick="{! c.handleClickAuraIteration }" />

        <aura:if isTrue="{!v.renderAuraIf}">
            <c:AuraIfWarning></c:AuraIfWarning>
        </aura:if>

        <aura:if isTrue="{!v.renderAuraIteration}">
            <c:AuraIterationWarning></c:AuraIterationWarning>
        </aura:if>
    </div>
</aura:application>	
