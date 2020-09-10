.class public abstract Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;
.super Lcom/android/settings/core/BasePreferenceController;
.source "DefaultAppShortcutPreferenceControllerBase.java"


# instance fields
.field private mAppQualified:Z

.field protected final mPackageName:Ljava/lang/String;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private final mRoleManager:Landroid/app/role/RoleManager;

.field private final mRoleName:Ljava/lang/String;

.field private mRoleVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mRoleName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mPackageName:Ljava/lang/String;

    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mRoleManager:Landroid/app/role/RoleManager;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/role/RoleControllerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleControllerManager;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mRoleName:Ljava/lang/String;

    new-instance v3, Lcom/android/settings/applications/appinfo/-$$Lambda$DefaultAppShortcutPreferenceControllerBase$PAhuwVBE2P_xbMKEkn5AwPD1_DQ;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/appinfo/-$$Lambda$DefaultAppShortcutPreferenceControllerBase$PAhuwVBE2P_xbMKEkn5AwPD1_DQ;-><init>(Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/role/RoleControllerManager;->isRoleVisible(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mRoleName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mPackageName:Ljava/lang/String;

    new-instance v4, Lcom/android/settings/applications/appinfo/-$$Lambda$DefaultAppShortcutPreferenceControllerBase$_GVkqHET8d1yF4IgDEBt_Ev5syM;

    invoke-direct {v4, p0}, Lcom/android/settings/applications/appinfo/-$$Lambda$DefaultAppShortcutPreferenceControllerBase$_GVkqHET8d1yF4IgDEBt_Ev5syM;-><init>(Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/app/role/RoleControllerManager;->isApplicationQualifiedForRole(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private isDefaultApp()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mRoleManager:Landroid/app/role/RoleManager;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mRoleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private refreshAvailability()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mRoleVisible:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mAppQualified:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    :goto_0
    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->isDefaultApp()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f121a07

    goto :goto_0

    :cond_0
    const v0, 0x7f120b4b

    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGE_DEFAULT_APP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mRoleName:Ljava/lang/String;

    const-string v2, "android.intent.extra.ROLE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method

.method public synthetic lambda$new$0$DefaultAppShortcutPreferenceControllerBase(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mRoleVisible:Z

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->refreshAvailability()V

    return-void
.end method

.method public synthetic lambda$new$1$DefaultAppShortcutPreferenceControllerBase(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mAppQualified:Z

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->refreshAvailability()V

    return-void
.end method
