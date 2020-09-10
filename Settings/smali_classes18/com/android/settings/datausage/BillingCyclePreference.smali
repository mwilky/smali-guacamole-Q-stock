.class public Lcom/android/settings/datausage/BillingCyclePreference;
.super Landroidx/preference/Preference;
.source "BillingCyclePreference.java"

# interfaces
.implements Lcom/android/settings/datausage/TemplatePreference;


# instance fields
.field private final mListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

.field private mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

.field private mSubId:I

.field private mTemplate:Landroid/net/NetworkTemplate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/settings/datausage/BillingCyclePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/BillingCyclePreference$1;-><init>(Lcom/android/settings/datausage/BillingCyclePreference;)V

    iput-object v0, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/datausage/BillingCyclePreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/BillingCyclePreference;->updateEnabled()V

    return-void
.end method

.method private updateEnabled()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v2, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mSubId:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/BillingCyclePreference;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/BillingCyclePreference;->setEnabled(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mTemplate:Landroid/net/NetworkTemplate;

    const-string v2, "network_template"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCyclePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const v2, 0x7f1202bf

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public onAttached()V
    .locals 4

    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    iget v1, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mSubId:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCyclePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings/datausage/CellDataPreference$DataStateListener;->setListener(ZILandroid/content/Context;)V

    return-void
.end method

.method public onDetached()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    iget v1, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mSubId:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCyclePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings/datausage/CellDataPreference$DataStateListener;->setListener(ZILandroid/content/Context;)V

    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    return-void
.end method

.method public setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mTemplate:Landroid/net/NetworkTemplate;

    iput p2, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mSubId:I

    iput-object p3, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/BillingCyclePreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCyclePreference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/BillingCyclePreference;->setIntent(Landroid/content/Intent;)V

    return-void
.end method
