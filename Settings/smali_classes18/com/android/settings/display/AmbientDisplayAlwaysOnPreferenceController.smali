.class public Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AmbientDisplayAlwaysOnPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController$OnPreferenceChangedCallback;
    }
.end annotation


# static fields
.field private static final MY_USER:I


# instance fields
.field private final OFF:I

.field private final ON:I

.field private mCallback:Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController$OnPreferenceChangedCallback;

.field private mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->MY_USER:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->ON:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->OFF:I

    return-void
.end method

.method private getConfig()Landroid/hardware/display/AmbientDisplayConfiguration;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    if-nez v0, :cond_0

    new-instance v0, Landroid/hardware/display/AmbientDisplayConfiguration;

    iget-object v1, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-object v0
.end method

.method public static isAvailable(Landroid/hardware/display/AmbientDisplayConfiguration;)Z
    .locals 1

    sget v0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->MY_USER:I

    invoke-virtual {p0, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnAvailableForUser(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->getConfig()Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->isAvailable(Landroid/hardware/display/AmbientDisplayConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0
.end method

.method public isChecked()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->getConfig()Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object v0

    sget v1, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->MY_USER:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isSliceable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ambient_display_always_on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setCallback(Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController$OnPreferenceChangedCallback;)Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->mCallback:Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController$OnPreferenceChangedCallback;

    return-object p0
.end method

.method public setChecked(Z)Z
    .locals 3

    move v0, p1

    iget-object v1, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "doze_always_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->mCallback:Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController$OnPreferenceChangedCallback;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController$OnPreferenceChangedCallback;->onPreferenceChanged()V

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public setConfig(Landroid/hardware/display/AmbientDisplayConfiguration;)Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-object p0
.end method
