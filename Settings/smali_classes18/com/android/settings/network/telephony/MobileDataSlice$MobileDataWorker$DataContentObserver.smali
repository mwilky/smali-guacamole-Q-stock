.class public Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker$DataContentObserver;
.super Landroid/database/ContentObserver;
.source "MobileDataSlice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataContentObserver"
.end annotation


# instance fields
.field private final mSliceBackgroundWorker:Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;

.field final synthetic this$0:Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;Landroid/os/Handler;Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker$DataContentObserver;->this$0:Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker$DataContentObserver;->mSliceBackgroundWorker:Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker$DataContentObserver;->mSliceBackgroundWorker:Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;->updateSlice()V

    return-void
.end method

.method public register(Landroid/content/Context;I)V
    .locals 3

    invoke-static {p2}, Lcom/android/settings/network/MobileDataContentObserver;->getObservableUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unRegister(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
