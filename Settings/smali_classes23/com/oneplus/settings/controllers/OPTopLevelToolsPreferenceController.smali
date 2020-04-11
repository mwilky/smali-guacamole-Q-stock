.class public Lcom/oneplus/settings/controllers/OPTopLevelToolsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPTopLevelToolsPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v0

    const-string v1, "com.oneplus.gamespace"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPTopLevelToolsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPTopLevelToolsPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120d1c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportQuickLaunch()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPTopLevelToolsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPTopLevelToolsPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120fa6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPTopLevelToolsPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120fa5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPTopLevelToolsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPTopLevelToolsPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120fa9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPTopLevelToolsPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120fa7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
