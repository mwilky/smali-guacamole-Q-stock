.class public Lcom/oneplus/settings/OPCustomNotificationAnimSettings;
.super Lcom/oneplus/settings/OPQuitConfirmFragment;
.source "OPCustomNotificationAnimSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/oneplus/settings/OnBackPressListener;


# static fields
.field private static final KEY_PREFERENCE:Ljava/lang/String; = "op_custom_notification_anim"

.field private static final TAG:Ljava/lang/String; = "OPCustomNotificationAnimSettings"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotificaitonAnimPreference:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/OPQuitConfirmFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "OPCustomNotificationAnimSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f16008e

    return v0
.end method

.method public synthetic lambda$onCreateOptionsMenu$0$OPCustomNotificationAnimSettings(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPCustomNotificationAnimSettings;->mNotificaitonAnimPreference:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->saveSelectedAnim()V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPCustomNotificationAnimSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    const/4 v0, 0x1

    return v0
.end method

.method protected needShowWarningDialog()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPCustomNotificationAnimSettings;->mNotificaitonAnimPreference:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->needShowWarningDialog()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/oneplus/settings/OPQuitConfirmFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPCustomNotificationAnimSettings;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPCustomNotificationAnimSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "op_custom_notification_anim"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    iput-object v1, p0, Lcom/oneplus/settings/OPCustomNotificationAnimSettings;->mNotificaitonAnimPreference:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/oneplus/settings/OPQuitConfirmFragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/oneplus/settings/OPCustomNotificationAnimSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCancelPressed()V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/OPCustomNotificationAnimSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method public onConfirmPressed()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPCustomNotificationAnimSettings;->mNotificaitonAnimPreference:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->saveSelectedAnim()V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPCustomNotificationAnimSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/oneplus/settings/OPQuitConfirmFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, p0}, Lcom/oneplus/settings/OPCustomNotificationAnimSettings;->setOnBackPressListener(Lcom/oneplus/settings/OnBackPressListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x7f120d20

    const/4 v1, 0x0

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v1, 0x7f0804b7

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    new-instance v1, Lcom/oneplus/settings/-$$Lambda$OPCustomNotificationAnimSettings$yDKrp1V5KRczmoKEgoG1tLvCj9c;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/-$$Lambda$OPCustomNotificationAnimSettings$yDKrp1V5KRczmoKEgoG1tLvCj9c;-><init>(Lcom/oneplus/settings/OPCustomNotificationAnimSettings;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method public onDestroy()V
    .locals 4

    invoke-super {p0}, Lcom/oneplus/settings/OPQuitConfirmFragment;->onDestroy()V

    iget-object v0, p0, Lcom/oneplus/settings/OPCustomNotificationAnimSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_custom_unlock_animation_style"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const-string v1, "status"

    const-string v2, "fod_effect"

    if-nez v0, :cond_0

    const-string v3, "1"

    invoke-static {v2, v1, v3}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    const-string v3, "2"

    invoke-static {v2, v1, v3}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    const-string v3, "3"

    invoke-static {v2, v1, v3}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v3, 0x9

    if-ne v0, v3, :cond_3

    const-string v3, "4"

    invoke-static {v2, v1, v3}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/oneplus/settings/OPQuitConfirmFragment;->onResume()V

    return-void
.end method
