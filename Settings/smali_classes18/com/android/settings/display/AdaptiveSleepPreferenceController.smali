.class public Lcom/android/settings/display/AdaptiveSleepPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AdaptiveSleepPreferenceController.java"


# instance fields
.field private final DEFAULT_VALUE:I

.field private final SYSTEM_KEY:Ljava/lang/String;

.field final hasSufficientPermissions:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "adaptive_sleep"

    iput-object v0, p0, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->SYSTEM_KEY:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->DEFAULT_VALUE:I

    iget-object v1, p0, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getAttentionServicePackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "android.permission.CAMERA"

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->hasSufficientPermissions:Z

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f1200da

    goto :goto_0

    :cond_0
    const v1, 0x7f1200d9

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public isChecked()Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->hasSufficientPermissions:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "adaptive_sleep"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public setChecked(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    nop

    const-string v1, "adaptive_sleep"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x1

    return v0
.end method
