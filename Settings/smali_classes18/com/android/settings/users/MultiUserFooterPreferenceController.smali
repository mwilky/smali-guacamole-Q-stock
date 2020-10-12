.class public Lcom/android/settings/users/MultiUserFooterPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "MultiUserFooterPreferenceController.java"


# instance fields
.field private mFooterMixin:Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;

.field final mUserCaps:Lcom/android/settings/users/UserCapabilities;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "dummy_key"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/settings/users/UserCapabilities;->create(Landroid/content/Context;)Lcom/android/settings/users/UserCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/MultiUserFooterPreferenceController;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/users/MultiUserFooterPreferenceController;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/MultiUserFooterPreferenceController;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mUserSwitcherEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    return v0
.end method

.method public setFooterMixin(Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;)Lcom/android/settings/users/MultiUserFooterPreferenceController;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/users/MultiUserFooterPreferenceController;->mFooterMixin:Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/users/MultiUserFooterPreferenceController;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-object v1, p0, Lcom/android/settings/users/MultiUserFooterPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserCapabilities;->updateAddUserCapabilities(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/users/MultiUserFooterPreferenceController;->mFooterMixin:Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;

    invoke-virtual {v0}, Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;->createFooterPreference()Lcom/oneplus/settings/widget/OPFooterPreference;

    move-result-object v0

    const v1, 0x7f1217b1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/widget/OPFooterPreference;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/settings/users/MultiUserFooterPreferenceController;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/widget/OPFooterPreference;->setVisible(Z)V

    return-void
.end method
