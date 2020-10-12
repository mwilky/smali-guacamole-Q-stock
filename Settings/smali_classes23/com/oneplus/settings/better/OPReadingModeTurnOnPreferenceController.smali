.class public Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPReadingModeTurnOnPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$SettingObserver;
    }
.end annotation


# static fields
.field private static final ASK_VALUE:I = 0x0

.field private static final CHROMATIC_VALUE:I = 0x2

.field private static final DIALOG_SELECTED_CHROMATIC:I = 0x0

.field private static final DIALOG_SELECTED_MONO:I = 0x1

.field private static final KEY_READING_MODE_TURN_ON:Ljava/lang/String; = "reading_mode_turn_on"

.field private static final MONO_VALUE:I = 0x1

.field public static final READING_MODE_STATUS:Ljava/lang/String; = "reading_mode_status"

.field public static final READING_MODE_STATUS_MANUAL:Ljava/lang/String; = "reading_mode_status_manual"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

.field private mSettingObserver:Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$SettingObserver;

.field private mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

.field private mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

.field private selectvalue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "reading_mode_turn_on"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iput-object p2, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;)Lcom/android/settings/widget/MasterSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->selectvalue:I

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private showSelectEffectDialog()V
    .locals 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->selectvalue:I

    new-instance v0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120f10

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$3;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$3;-><init>(Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;)V

    const v2, 0x7f0300cd

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$2;-><init>(Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;)V

    const v2, 0x7f12010d

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$1;-><init>(Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->show()Lcom/oneplus/lib/app/OPAlertDialog;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "reading_mode_turn_on"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/MasterSwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$SettingObserver;-><init>(Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;Lcom/android/settings/widget/MasterSwitchPreference;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mSettingObserver:Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$SettingObserver;

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "reading_mode_turn_on"

    return-object v0
.end method

.method public onPause()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mSettingObserver:Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, -0x2

    const/4 v3, 0x0

    const-string v4, "reading_mode_status"

    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz v0, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    new-instance v2, Lcom/android/settings/widget/MasterSwitchController;

    iget-object v4, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-direct {v2, v4}, Lcom/android/settings/widget/MasterSwitchController;-><init>(Lcom/android/settings/widget/MasterSwitchPreference;)V

    iput-object v2, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    iget-object v2, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {v2, p0}, Lcom/android/settings/widget/MasterSwitchController;->setListener(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    iget-object v2, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {v2}, Lcom/android/settings/widget/MasterSwitchController;->startListening()V

    iget-object v2, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "reading_mode_option_manual"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    const v4, 0x7f120f07

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/MasterSwitchPreference;->setSummary(I)V

    goto :goto_1

    :cond_2
    if-ne v2, v1, :cond_3

    iget-object v3, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    const v4, 0x7f120f17

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/MasterSwitchPreference;->setSummary(I)V

    goto :goto_1

    :cond_3
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    iget-object v3, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    const v4, 0x7f120f16

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/MasterSwitchPreference;->setSummary(I)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mSettingObserver:Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$SettingObserver;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    :cond_5
    return-void
.end method

.method public onSwitchToggled(Z)Z
    .locals 6

    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "reading_mode_option_manual"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x2

    const-string v3, "reading_mode_status_manual"

    if-eqz p1, :cond_2

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->showSelectEffectDialog()V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object v4, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "force-on"

    invoke-static {v4, v3, v5, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    iget-object v4, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "force-on-color"

    invoke-static {v4, v3, v5, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "force-off"

    invoke-static {v4, v3, v5, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_3
    :goto_0
    return v1
.end method
