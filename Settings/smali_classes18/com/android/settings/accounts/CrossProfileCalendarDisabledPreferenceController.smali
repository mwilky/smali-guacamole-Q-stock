.class public Lcom/android/settings/accounts/CrossProfileCalendarDisabledPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "CrossProfileCalendarDisabledPreferenceController.java"


# instance fields
.field private mManagedUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accounts/CrossProfileCalendarDisabledPreferenceController;->mManagedUser:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accounts/CrossProfileCalendarDisabledPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/accounts/CrossProfileCalendarDisabledPreferenceController;->mManagedUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/accounts/CrossProfileCalendarPreferenceController;->isCrossProfileCalendarDisallowedByAdmin(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x4

    return v0
.end method

.method public setManagedUser(Landroid/os/UserHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accounts/CrossProfileCalendarDisabledPreferenceController;->mManagedUser:Landroid/os/UserHandle;

    return-void
.end method
