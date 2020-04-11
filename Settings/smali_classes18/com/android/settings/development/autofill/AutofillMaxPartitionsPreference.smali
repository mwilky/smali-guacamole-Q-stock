.class public final Lcom/android/settings/development/autofill/AutofillMaxPartitionsPreference;
.super Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;
.source "AutofillMaxPartitionsPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "autofill_max_partitions_size"

    const/16 v1, 0xa

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onAttached()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->onAttached()V

    return-void
.end method

.method public bridge synthetic onDetached()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->onDetached()V

    return-void
.end method
