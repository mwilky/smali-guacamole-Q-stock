.class public Lcom/android/settings/datausage/backgrounddata/receiver/RoamingStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RoamingStatusReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RoamingStatusReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->changeRoamingAppStatus(Landroid/content/Context;)V

    const-string v0, "RoamingStatusReceiver"

    const-string v1, "RoamingStatusReceiver onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
