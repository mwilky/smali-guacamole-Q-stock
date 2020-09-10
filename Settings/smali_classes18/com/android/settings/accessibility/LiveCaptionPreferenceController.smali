.class public Lcom/android/settings/accessibility/LiveCaptionPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "LiveCaptionPreferenceController.java"


# static fields
.field static final LIVE_CAPTION_INTENT:Landroid/content/Intent;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.action.live_caption"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/accessibility/LiveCaptionPreferenceController;->LIVE_CAPTION_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/LiveCaptionPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 4

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/LiveCaptionPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    sget-object v2, Lcom/android/settings/accessibility/LiveCaptionPreferenceController;->LIVE_CAPTION_INTENT:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return v1

    :cond_1
    return v1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->updateState(Landroidx/preference/Preference;)V

    sget-object v0, Lcom/android/settings/accessibility/LiveCaptionPreferenceController;->LIVE_CAPTION_INTENT:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    return-void
.end method
