.class public Lcom/oneplus/settings/aboutphone/OpenIdSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "OpenIdSettings.java"


# static fields
.field private static final KEY_GET_OPENDI_SWITCH:Ljava/lang/String; = "get_opendi_switch"

.field private static final KEY_RESET_OPENID_BUTTON_CONTAINER:Ljava/lang/String; = "reset_openid_button_container"

.field private static final TAG:Ljava/lang/String; = "OpenIdSettings"


# instance fields
.field private mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

.field private mWarnDialog:Lcom/oneplus/lib/app/OPAlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$showWarningDialog$3(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "OpenIdSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1600a7

    return v0
.end method

.method public synthetic lambda$onCreate$0$OpenIdSettings(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OpenIdSettings;->showWarningDialog()V

    return-void
.end method

.method public synthetic lambda$onCreate$1$OpenIdSettings(Lcom/oneplus/lib/widget/button/OPButton;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OpenIdSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "oneplus_openid_toggle"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object v0, p3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "on"

    goto :goto_0

    :cond_0
    const-string v0, "off"

    :goto_0
    const-string v1, "oaid"

    const-string v2, "status"

    invoke-static {v1, v2, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/button/OPButton;->setEnabled(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$showWarningDialog$2$OpenIdSettings(Landroid/content/DialogInterface;I)V
    .locals 5

    const-string v0, "OUID"

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1, v0}, Lcom/oneplus/android/openid/OpOpenIdManagerInjector;->clearOpenId(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/OpenIdSettings;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f12116f

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/aboutphone/OpenIdSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-static {v2, v4, v0}, Lcom/oneplus/android/openid/OpOpenIdManagerInjector;->getOpenId(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oneplus/settings/widget/OPFooterPreference;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "reset_openid_button_container"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/aboutphone/OpenIdSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    const-string v1, "get_opendi_switch"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/aboutphone/OpenIdSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreference;

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/OpenIdSettings;->mFooterPreferenceMixin:Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;

    invoke-virtual {v2}, Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;->createFooterPreference()Lcom/oneplus/settings/widget/OPFooterPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/aboutphone/OpenIdSettings;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/OpenIdSettings;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/widget/OPFooterPreference;->setOrder(I)V

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/OpenIdSettings;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/widget/OPFooterPreference;->setSelectable(Z)V

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/OpenIdSettings;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f12116f

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/aboutphone/OpenIdSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    const-string v7, "OUID"

    invoke-static {v5, v6, v7}, Lcom/oneplus/android/openid/OpOpenIdManagerInjector;->getOpenId(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/widget/OPFooterPreference;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const v2, 0x7f0a05b5

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/button/OPButton;

    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OpenIdSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x1

    const-string v6, "oneplus_openid_toggle"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    move v5, v3

    :goto_1
    invoke-virtual {v1, v5}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    new-instance v5, Lcom/oneplus/settings/aboutphone/-$$Lambda$OpenIdSettings$AuO0aFRPrmiDP9aUKus-1jWVCZ0;

    invoke-direct {v5, p0}, Lcom/oneplus/settings/aboutphone/-$$Lambda$OpenIdSettings$AuO0aFRPrmiDP9aUKus-1jWVCZ0;-><init>(Lcom/oneplus/settings/aboutphone/OpenIdSettings;)V

    invoke-virtual {v2, v5}, Lcom/oneplus/lib/widget/button/OPButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez v4, :cond_1

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/button/OPButton;->setEnabled(Z)V

    :cond_1
    new-instance v3, Lcom/oneplus/settings/aboutphone/-$$Lambda$OpenIdSettings$VoUIxXsGiBlRFuuczVjeWZcsPQ0;

    invoke-direct {v3, p0, v2}, Lcom/oneplus/settings/aboutphone/-$$Lambda$OpenIdSettings$VoUIxXsGiBlRFuuczVjeWZcsPQ0;-><init>(Lcom/oneplus/settings/aboutphone/OpenIdSettings;Lcom/oneplus/lib/widget/button/OPButton;)V

    invoke-virtual {v1, v3}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OpenIdSettings;->mWarnDialog:Lcom/oneplus/lib/app/OPAlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/app/OPAlertDialog;->cancel()V

    :cond_0
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onDestroyView()V

    return-void
.end method

.method public showWarningDialog()V
    .locals 3

    new-instance v0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OpenIdSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12116e

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12116d

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setMessage(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/aboutphone/-$$Lambda$OpenIdSettings$gH9zyX_fqtkhjBj1gsjo4pbq_5Y;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/aboutphone/-$$Lambda$OpenIdSettings$gH9zyX_fqtkhjBj1gsjo4pbq_5Y;-><init>(Lcom/oneplus/settings/aboutphone/OpenIdSettings;)V

    const v2, 0x7f12116c

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/oneplus/settings/aboutphone/-$$Lambda$OpenIdSettings$zxn4_303Ql923k6ogE0guN_EXMA;->INSTANCE:Lcom/oneplus/settings/aboutphone/-$$Lambda$OpenIdSettings$zxn4_303Ql923k6ogE0guN_EXMA;

    const v2, 0x7f1203eb

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->create()Lcom/oneplus/lib/app/OPAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/aboutphone/OpenIdSettings;->mWarnDialog:Lcom/oneplus/lib/app/OPAlertDialog;

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OpenIdSettings;->mWarnDialog:Lcom/oneplus/lib/app/OPAlertDialog;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/OPAlertDialog;->show()V

    return-void
.end method
