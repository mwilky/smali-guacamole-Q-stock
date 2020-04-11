.class public Lcom/android/settings/network/MobileDataEnabledListener;
.super Landroid/database/ContentObserver;
.source "MobileDataEnabledListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/MobileDataEnabledListener$Client;
    }
.end annotation


# instance fields
.field private mClient:Lcom/android/settings/network/MobileDataEnabledListener$Client;

.field private mContext:Landroid/content/Context;

.field private mSubId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/network/MobileDataEnabledListener$Client;)V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mClient:Lcom/android/settings/network/MobileDataEnabledListener$Client;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mSubId:I

    return-void
.end method


# virtual methods
.method public getSubId()I
    .locals 1

    iget v0, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mSubId:I

    return v0
.end method

.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mClient:Lcom/android/settings/network/MobileDataEnabledListener$Client;

    invoke-interface {v0}, Lcom/android/settings/network/MobileDataEnabledListener$Client;->onMobileDataEnabledChange()V

    return-void
.end method

.method public start(I)V
    .locals 3

    iput p1, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mSubId:I

    iget v0, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mSubId:I

    const-string v1, "mobile_data"

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public stop()Lcom/android/settings/network/MobileDataEnabledListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-object p0
.end method
