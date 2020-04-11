.class public Lcom/android/settings/notification/RedactNotificationPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "RedactNotificationPreferenceController.java"


# static fields
.field static final KEY_LOCKSCREEN_REDACT:Ljava/lang/String; = "lock_screen_redact"

.field static final KEY_LOCKSCREEN_WORK_PROFILE_REDACT:Ljava/lang/String; = "lock_screen_work_redact"

.field private static final TAG:Ljava/lang/String; = "LockScreenNotifPref"


# instance fields
.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mKm:Landroid/app/KeyguardManager;

.field private final mProfileUserId:I

.field private mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mUm:Landroid/os/UserManager;

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mKm:Landroid/app/KeyguardManager;

    iget-object v0, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mProfileUserId:I

    return-void
.end method

.method private adminAllowsNotifications(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private adminAllowsUnredactedNotifications(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    and-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private getAllowPrivateNotifications(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "lock_screen_allow_private_notifications"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private getLockscreenNotificationsEnabled(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/notification/RedactNotificationPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lock_screen_work_redact"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mProfileUserId:I

    const/16 v3, -0x2710

    if-ne v0, v3, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/RedactNotificationPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "lock_screen_redact"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mProfileUserId:I

    :goto_0
    iget-object v3, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {v3, v4}, Lcom/android/settings/security/SecurityFeatureProvider;->getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    if-nez v4, :cond_2

    return v2

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/settings/notification/RedactNotificationPreferenceController;->getLockscreenNotificationsEnabled(I)Z

    move-result v2

    const/4 v4, 0x5

    if-eqz v2, :cond_5

    invoke-direct {p0, v0}, Lcom/android/settings/notification/RedactNotificationPreferenceController;->adminAllowsNotifications(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v0}, Lcom/android/settings/notification/RedactNotificationPreferenceController;->adminAllowsUnredactedNotifications(I)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/notification/RedactNotificationPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mKm:Landroid/app/KeyguardManager;

    iget v2, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mProfileUserId:I

    invoke-virtual {v1, v2}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v1

    if-eqz v1, :cond_4

    return v4

    :cond_4
    const/4 v1, 0x0

    return v1

    :cond_5
    :goto_1
    return v4
.end method

.method public isChecked()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/notification/RedactNotificationPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lock_screen_redact"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mProfileUserId:I

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/notification/RedactNotificationPreferenceController;->getAllowPrivateNotifications(I)Z

    move-result v1

    return v1
.end method

.method public setChecked(Z)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/notification/RedactNotificationPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lock_screen_redact"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mProfileUserId:I

    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    nop

    const-string v2, "lock_screen_allow_private_notifications"

    invoke-static {v1, v2, p1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const/4 v1, 0x1

    return v1
.end method
