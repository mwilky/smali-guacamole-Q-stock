.class public Lcom/android/settings/development/featureflags/FeatureFlagFooterPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "FeatureFlagFooterPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;


# instance fields
.field private mFooterMixin:Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "feature_flag_footer_pref"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/development/featureflags/FeatureFlagFooterPreferenceController;->mFooterMixin:Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;

    invoke-virtual {v0}, Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;->createFooterPreference()Lcom/oneplus/settings/widget/OPFooterPreference;

    move-result-object v0

    const v1, 0x7f1206fb

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/widget/OPFooterPreference;->setTitle(I)V

    return-void
.end method

.method public setFooterMixin(Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/development/featureflags/FeatureFlagFooterPreferenceController;->mFooterMixin:Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;

    return-void
.end method
