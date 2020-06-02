.class public Lcom/android/settings/notification/GentleNotificationsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "GentleNotificationsPreferenceController.java"


# static fields
.field static final ON:I = 0x1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mBackend:Lcom/android/settings/notification/NotificationBackend;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/GentleNotificationsPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    return-void
.end method

.method private showOnLockscreen()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/GentleNotificationsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "lock_screen_show_silent_notifications"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private showOnStatusBar()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/GentleNotificationsPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/notification/GentleNotificationsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationBackend;->shouldHideSilentStatusBarIcons(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 4

    invoke-direct {p0}, Lcom/android/settings/notification/GentleNotificationsPreferenceController;->showOnLockscreen()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/notification/GentleNotificationsPreferenceController;->showOnStatusBar()Z

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/notification/GentleNotificationsPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f12075b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/settings/notification/GentleNotificationsPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f120759

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/settings/notification/GentleNotificationsPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f12075a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2
    iget-object v2, p0, Lcom/android/settings/notification/GentleNotificationsPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f120758

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method setBackend(Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/android/settings/notification/GentleNotificationsPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    return-void
.end method
