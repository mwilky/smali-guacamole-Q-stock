.class public Lcom/android/settings/notification/GlobalBubblePermissionObserverMixin;
.super Landroid/database/ContentObserver;
.source "GlobalBubblePermissionObserverMixin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/GlobalBubblePermissionObserverMixin$Listener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/android/settings/notification/GlobalBubblePermissionObserverMixin$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/GlobalBubblePermissionObserverMixin$Listener;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/notification/GlobalBubblePermissionObserverMixin;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/notification/GlobalBubblePermissionObserverMixin;->mListener:Lcom/android/settings/notification/GlobalBubblePermissionObserverMixin$Listener;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/GlobalBubblePermissionObserverMixin;->mListener:Lcom/android/settings/notification/GlobalBubblePermissionObserverMixin$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/settings/notification/GlobalBubblePermissionObserverMixin$Listener;->onGlobalBubblePermissionChanged()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/GlobalBubblePermissionObserverMixin;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_bubbles"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/GlobalBubblePermissionObserverMixin;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
