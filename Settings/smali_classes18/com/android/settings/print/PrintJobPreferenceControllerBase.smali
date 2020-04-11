.class public abstract Lcom/android/settings/print/PrintJobPreferenceControllerBase;
.super Lcom/android/settings/core/BasePreferenceController;
.source "PrintJobPreferenceControllerBase.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Landroid/print/PrintManager$PrintJobStateChangeListener;


# static fields
.field private static final EXTRA_PRINT_JOB_ID:Ljava/lang/String; = "EXTRA_PRINT_JOB_ID"

.field private static final TAG:Ljava/lang/String; = "PrintJobPrefCtrlBase"


# instance fields
.field protected mFragment:Lcom/android/settings/print/PrintJobSettingsFragment;

.field protected mPreference:Landroidx/preference/Preference;

.field protected mPrintJobId:Landroid/print/PrintJobId;

.field private final mPrintManager:Landroid/print/PrintManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/print/PrintJobPreferenceControllerBase;->mContext:Landroid/content/Context;

    const-string v1, "print"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    iget-object v1, p0, Lcom/android/settings/print/PrintJobPreferenceControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->getGlobalPrintManagerForUser(I)Landroid/print/PrintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/PrintJobPreferenceControllerBase;->mPrintManager:Landroid/print/PrintManager;

    return-void
.end method

.method private processArguments()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/print/PrintJobPreferenceControllerBase;->mFragment:Lcom/android/settings/print/PrintJobSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_PRINT_JOB_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/print/PrintJobPreferenceControllerBase;->mFragment:Lcom/android/settings/print/PrintJobSettingsFragment;

    invoke-virtual {v2}, Lcom/android/settings/print/PrintJobSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "PrintJobPrefCtrlBase"

    const-string v2, "EXTRA_PRINT_JOB_ID not set"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/print/PrintJobPreferenceControllerBase;->mFragment:Lcom/android/settings/print/PrintJobSettingsFragment;

    invoke-virtual {v1}, Lcom/android/settings/print/PrintJobSettingsFragment;->finish()V

    return-void

    :cond_0
    invoke-static {v0}, Landroid/print/PrintJobId;->unflattenFromString(Ljava/lang/String;)Landroid/print/PrintJobId;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/print/PrintJobPreferenceControllerBase;->mPrintJobId:Landroid/print/PrintJobId;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobPreferenceControllerBase;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/PrintJobPreferenceControllerBase;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getPrintJob()Landroid/print/PrintJob;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/print/PrintJobPreferenceControllerBase;->mPrintManager:Landroid/print/PrintManager;

    iget-object v1, p0, Lcom/android/settings/print/PrintJobPreferenceControllerBase;->mPrintJobId:Landroid/print/PrintJobId;

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->getPrintJob(Landroid/print/PrintJobId;)Landroid/print/PrintJob;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/android/settings/print/PrintJobSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/print/PrintJobPreferenceControllerBase;->mFragment:Lcom/android/settings/print/PrintJobSettingsFragment;

    invoke-direct {p0}, Lcom/android/settings/print/PrintJobPreferenceControllerBase;->processArguments()V

    return-void
.end method

.method public onPrintJobStateChanged(Landroid/print/PrintJobId;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobPreferenceControllerBase;->updateUi()V

    return-void
.end method

.method public onStart()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/print/PrintJobPreferenceControllerBase;->mPrintManager:Landroid/print/PrintManager;

    invoke-virtual {v0, p0}, Landroid/print/PrintManager;->addPrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobPreferenceControllerBase;->updateUi()V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/print/PrintJobPreferenceControllerBase;->mPrintManager:Landroid/print/PrintManager;

    invoke-virtual {v0, p0}, Landroid/print/PrintManager;->removePrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    return-void
.end method

.method protected abstract updateUi()V
.end method
