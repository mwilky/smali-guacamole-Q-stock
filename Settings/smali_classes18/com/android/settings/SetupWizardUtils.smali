.class public Lcom/android/settings/SetupWizardUtils;
.super Ljava/lang/Object;
.source "SetupWizardUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyLifecycleExtra(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    const-string v0, "firstRun"

    const-string v1, "isSetupFlow"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    return-void
.end method

.method public static getTheme(Landroid/content/Intent;)I
    .locals 2

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    const-string v1, "SetupWizardUtils"

    if-eqz v0, :cond_0

    const-string v0, "Theme_Oneplus_SetupWizardTheme_Oxygen"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f13051a

    return v0

    :cond_0
    const-string v0, "Theme_Oneplus_SetupWizardTheme_Hydrogen"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f130517

    return v0
.end method

.method public static getThemeString(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    const-string v0, "theme"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/sysprop/SetupWizardProperties;->theme()Ljava/util/Optional;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public static getTransparentTheme(Landroid/content/Intent;)I
    .locals 3

    invoke-static {p0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result v0

    const v1, 0x7f130121

    const v2, 0x7f130125

    if-ne v0, v2, :cond_0

    const v1, 0x7f130129

    goto :goto_0

    :cond_0
    const v2, 0x7f130127

    if-ne v0, v2, :cond_1

    const v1, 0x7f130128

    goto :goto_0

    :cond_1
    const v2, 0x7f13011f

    if-ne v0, v2, :cond_2

    const v1, 0x7f130122

    goto :goto_0

    :cond_2
    const v2, 0x7f13011e

    if-ne v0, v2, :cond_3

    const v1, 0x7f1303b1

    goto :goto_0

    :cond_3
    const v2, 0x7f13011d

    if-ne v0, v2, :cond_4

    const v1, 0x7f1303b2

    :cond_4
    :goto_0
    return v1
.end method
