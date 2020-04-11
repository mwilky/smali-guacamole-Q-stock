.class public Lcom/android/settings/print/PrintJobMessagePreferenceController;
.super Lcom/android/settings/print/PrintJobPreferenceControllerBase;
.source "PrintJobMessagePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/print/PrintJobPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected updateUi()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobMessagePreferenceController;->getPrintJob()Landroid/print/PrintJob;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/print/PrintJobMessagePreferenceController;->mFragment:Lcom/android/settings/print/PrintJobSettingsFragment;

    invoke-virtual {v1}, Lcom/android/settings/print/PrintJobSettingsFragment;->finish()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/print/PrintJob;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/print/PrintJob;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/print/PrintJobMessagePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/print/PrintJobInfo;->getStatus(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/print/PrintJobMessagePreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v3, p0, Lcom/android/settings/print/PrintJobMessagePreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/settings/print/PrintJobMessagePreferenceController;->mFragment:Lcom/android/settings/print/PrintJobSettingsFragment;

    invoke-virtual {v1}, Lcom/android/settings/print/PrintJobSettingsFragment;->finish()V

    return-void
.end method
