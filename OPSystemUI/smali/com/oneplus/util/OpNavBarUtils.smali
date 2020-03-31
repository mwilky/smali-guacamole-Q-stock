.class public Lcom/oneplus/util/OpNavBarUtils;
.super Ljava/lang/Object;
.source "OpNavBarUtils.java"


# direct methods
.method public static getNavBarLayout(Landroid/content/Context;Z)I
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    invoke-static {p0}, Lcom/oneplus/util/OpNavBarUtils;->isBackKeyRight(Landroid/content/Context;)Z

    move-result p0

    sget v1, Lcom/android/systemui/R$string;->oneplus_config_navBarLayout:I

    sget v2, Lcom/android/systemui/R$string;->oneplus_config_navBarLayout_RTL:I

    sget v3, Lcom/android/systemui/R$string;->oneplus_config_navBarLayoutQuickstep:I

    sget v4, Lcom/android/systemui/R$string;->oneplus_config_navBarLayoutQuickstep_RTL:I

    if-eqz p1, :cond_0

    move v1, v3

    :cond_0
    if-eqz p1, :cond_1

    move v2, v4

    :cond_1
    if-eqz p0, :cond_3

    if-nez v0, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    const/4 p0, 0x1

    if-ne v0, p0, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method public static isBackKeyRight(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/oneplus/util/OpUtils;->isGlobalROM(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/oneplus/util/OpNavBarUtils;->isKeySwapped(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/oneplus/util/OpUtils;->isGlobalROM(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/oneplus/util/OpNavBarUtils;->isKeySwapped(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isKeySwapped(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "oem_acc_key_define"

    invoke-static {p0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :catch_0
    :goto_0
    return v0
.end method

.method public static isSupportCustomKeys()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportCustomNavBar()Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x42

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    return v0
.end method

.method public static isSupportHideNavBar()Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x26

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    return v0
.end method
