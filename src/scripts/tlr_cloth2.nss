//::///////////////////////////////////////////////
//:: Tailoring - Dye Cloth 2
//:: tlr_cloth2.nss
//:: Copyright (c) 2003 Jake E. Fitch
//:://////////////////////////////////////////////
/*
    Set the material to be died to Leather 1.
*/
//:://////////////////////////////////////////////
//:: Created By: Jake E. Fitch (Milambus Mandragon)
//:: Created On: March 8, 2004
//:://////////////////////////////////////////////

#include "tlr_include"

void main()
{
    object oPC = GetPCSpeaker();

    if(GetLocalInt(OBJECT_SELF, "IsCloakModel") == 1)
    {
        object oItem = GetItemInSlot(INVENTORY_SLOT_CLOAK, OBJECT_SELF);
        int iMaterialToDye = ITEM_APPR_ARMOR_COLOR_CLOTH2;

        SetLocalInt(OBJECT_SELF, "MaterialToDye", iMaterialToDye);

        int iColor = GetItemAppearance(oItem, ITEM_APPR_TYPE_ARMOR_COLOR, iMaterialToDye);

        SendMessageToPC(oPC, "Current Color: " + ClothColor(iColor));
    }
    else
    {
        object oItem = GetItemInSlot(INVENTORY_SLOT_CHEST, OBJECT_SELF);
        int iMaterialToDye = ITEM_APPR_ARMOR_COLOR_CLOTH2;

        SetLocalInt(OBJECT_SELF, "MaterialToDye", iMaterialToDye);

        int iColor = GetItemAppearance(oItem, ITEM_APPR_TYPE_ARMOR_COLOR, iMaterialToDye);

        SendMessageToPC(oPC, "Current Color: " + ClothColor(iColor));
    }
}
