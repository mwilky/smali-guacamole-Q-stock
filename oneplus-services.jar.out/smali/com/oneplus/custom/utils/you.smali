.class public Lcom/oneplus/custom/utils/you;
.super Lcom/oneplus/custom/utils/OpCustomizeSettings;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/custom/utils/OpCustomizeSettings;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCustomization()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;
    .locals 2

    sget-object p0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->NONE:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    invoke-static {}, Lcom/oneplus/custom/utils/rtg;->getCustFlagVal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->SW:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->JCC:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    :goto_0
    return-object p0
.end method
