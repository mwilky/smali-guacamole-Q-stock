.class final Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ComponentTime;
.super Ljava/lang/Object;
.source "HoustonServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/houston/apkserver/bridge/HoustonServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ComponentTime"
.end annotation


# instance fields
.field bindApplicationDelayMs:I

.field componentName:Ljava/lang/String;

.field public info:Landroid/content/pm/ApplicationInfo;

.field launchTime:I

.field packageName:Ljava/lang/String;

.field pid:I

.field processName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ComponentTime;->info:Landroid/content/pm/ApplicationInfo;

    iput-object p2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ComponentTime;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ComponentTime;->processName:Ljava/lang/String;

    iput-object p4, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ComponentTime;->componentName:Ljava/lang/String;

    iput p5, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ComponentTime;->pid:I

    iput p6, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ComponentTime;->bindApplicationDelayMs:I

    iput p7, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ComponentTime;->launchTime:I

    return-void
.end method
