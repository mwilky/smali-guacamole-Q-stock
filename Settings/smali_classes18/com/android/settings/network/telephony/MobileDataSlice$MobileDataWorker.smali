.class public Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;
.super Lcom/android/settings/slices/SliceBackgroundWorker;
.source "MobileDataSlice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/MobileDataSlice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MobileDataWorker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker$DataContentObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/slices/SliceBackgroundWorker<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mMobileDataObserver:Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker$DataContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SliceBackgroundWorker;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker$DataContentObserver;

    invoke-direct {v1, p0, v0, p0}, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker$DataContentObserver;-><init>(Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;Landroid/os/Handler;Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;)V

    iput-object v1, p0, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;->mMobileDataObserver:Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker$DataContentObserver;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;->mMobileDataObserver:Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker$DataContentObserver;

    return-void
.end method

.method protected onSlicePinned()V
    .locals 4

    nop

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;->mMobileDataObserver:Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker$DataContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0}, Lcom/android/settings/network/telephony/MobileDataSlice;->getDefaultSubscriptionId(Landroid/telephony/SubscriptionManager;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker$DataContentObserver;->register(Landroid/content/Context;I)V

    return-void
.end method

.method protected onSliceUnpinned()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;->mMobileDataObserver:Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker$DataContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker$DataContentObserver;->unRegister(Landroid/content/Context;)V

    return-void
.end method

.method public updateSlice()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;->notifySliceChange()V

    return-void
.end method
