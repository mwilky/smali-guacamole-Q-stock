.class public final Lcom/android/settings/language/UserDictionaryForWorkPreferenceController;
.super Lcom/android/settings/core/WorkProfilePreferenceController;
.source "UserDictionaryForWorkPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/WorkProfilePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    sget-boolean v0, Landroid/view/inputmethod/InputMethodSystemProperty;->PER_PROFILE_IME_ENABLED:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/settings/core/WorkProfilePreferenceController;->getAvailabilityStatus()I

    move-result v0

    return v0
.end method

.method protected getSourceMetricsCategory()I
    .locals 1

    const/16 v0, 0x2ee

    return v0
.end method
