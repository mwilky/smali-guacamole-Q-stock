.class public Lcom/oneplus/android/server/openid/sis;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/openid/sis$zta;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z

.field protected static final TAG:Ljava/lang/String; = "OpenIdManager"

.field private static final Tca:Ljava/lang/String; = "oneplus_openid_toggle"

.field private static final Uca:Landroid/net/Uri;

.field private static final Vca:I = 0x1


# instance fields
.field private Qca:Lcom/oneplus/android/server/openid/cno;

.field private Rca:Lcom/oneplus/android/server/openid/kth;

.field private Sca:Z

.field private mBinder:Landroid/os/IBinder;

.field private mContext:Landroid/content/Context;

.field private mMainHandler:Landroid/os/Handler;

.field private mSettingsObserver:Lcom/oneplus/android/server/openid/sis$zta;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/openid/sis;->DEBUG:Z

    const-string v0, "oneplus_openid_toggle"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/server/openid/sis;->Uca:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/openid/sis;->Sca:Z

    new-instance v0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService$1;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/openid/OpOpenIdManagerService$1;-><init>(Lcom/oneplus/android/server/openid/sis;)V

    iput-object v0, p0, Lcom/oneplus/android/server/openid/sis;->mBinder:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/oneplus/android/server/openid/sis;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/oneplus/android/server/openid/sis;->mMainHandler:Landroid/os/Handler;

    new-instance p1, Lcom/oneplus/android/server/openid/cno;

    iget-object v0, p0, Lcom/oneplus/android/server/openid/sis;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/oneplus/android/server/openid/cno;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oneplus/android/server/openid/sis;->Qca:Lcom/oneplus/android/server/openid/cno;

    new-instance p1, Lcom/oneplus/android/server/openid/kth;

    iget-object v0, p0, Lcom/oneplus/android/server/openid/sis;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/oneplus/android/server/openid/zta;

    invoke-direct {v1, p0}, Lcom/oneplus/android/server/openid/zta;-><init>(Lcom/oneplus/android/server/openid/sis;)V

    invoke-direct {p1, v0, v1}, Lcom/oneplus/android/server/openid/kth;-><init>(Landroid/content/Context;Lcom/oneplus/android/server/openid/kth$zta;)V

    iput-object p1, p0, Lcom/oneplus/android/server/openid/sis;->Rca:Lcom/oneplus/android/server/openid/kth;

    new-instance p1, Lcom/oneplus/android/server/openid/sis$zta;

    iget-object v0, p0, Lcom/oneplus/android/server/openid/sis;->mMainHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lcom/oneplus/android/server/openid/sis$zta;-><init>(Lcom/oneplus/android/server/openid/sis;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oneplus/android/server/openid/sis;->mSettingsObserver:Lcom/oneplus/android/server/openid/sis$zta;

    return-void
.end method

.method static synthetic access$600()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/openid/sis;->Uca:Landroid/net/Uri;

    return-object v0
.end method

.method private clearOpenId(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clearing openid: package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpenIdManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Only the system can request to clear openid"

    invoke-static {v0}, Lcom/oneplus/android/server/openid/sis;->enforceSystemOrRoot(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oneplus/android/server/openid/sis;->Qca:Lcom/oneplus/android/server/openid/cno;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/android/server/openid/cno;->clearOpenId(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private static enforceSystemOrRoot(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private getOpenId(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/openid/sis;->Qca:Lcom/oneplus/android/server/openid/cno;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/android/server/openid/cno;->getOpenId(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic sis(Lcom/oneplus/android/server/openid/sis;)Lcom/oneplus/android/server/openid/kth;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/openid/sis;->Rca:Lcom/oneplus/android/server/openid/kth;

    return-object p0
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/openid/sis;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/openid/sis;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic you(Lcom/oneplus/android/server/openid/sis;)Lcom/oneplus/android/server/openid/cno;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/openid/sis;->Qca:Lcom/oneplus/android/server/openid/cno;

    return-object p0
.end method

.method static synthetic you(Lcom/oneplus/android/server/openid/sis;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/android/server/openid/sis;->clearOpenId(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic zta(Lcom/oneplus/android/server/openid/sis;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/android/server/openid/sis;->getOpenId(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/openid/sis;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/openid/sis;->Sca:Z

    return p0
.end method


# virtual methods
.method public synthetic M(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Feature state changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "enabled"

    goto :goto_0

    :cond_0
    const-string v1, "disabled"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpenIdManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/oneplus/android/server/openid/sis;->Sca:Z

    return-void
.end method

.method public onBootComplete()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/openid/sis;->Qca:Lcom/oneplus/android/server/openid/cno;

    invoke-virtual {v0}, Lcom/oneplus/android/server/openid/cno;->init()V

    iget-object v0, p0, Lcom/oneplus/android/server/openid/sis;->Rca:Lcom/oneplus/android/server/openid/kth;

    invoke-virtual {v0}, Lcom/oneplus/android/server/openid/kth;->Ye()V

    iget-object p0, p0, Lcom/oneplus/android/server/openid/sis;->mSettingsObserver:Lcom/oneplus/android/server/openid/sis$zta;

    invoke-virtual {p0}, Lcom/oneplus/android/server/openid/sis$zta;->observe()V

    return-void
.end method

.method public onSystemReady()V
    .locals 2

    const-string v0, "OpenIdManager"

    :try_start_0
    sget-boolean v1, Lcom/oneplus/android/server/openid/sis;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Start openid service"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "openid"

    iget-object p0, p0, Lcom/oneplus/android/server/openid/sis;->mBinder:Landroid/os/IBinder;

    invoke-static {v1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v1, "Failed to start openid service!"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
