.class public Lcom/android/server/OnePlusUtil;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/IOpUtil;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OnePlusUtil$zta;,
        Lcom/android/server/OnePlusUtil$you;
    }
.end annotation


# static fields
.field private static final DEBUG_ONEPLUS:Z

.field private static final PROP_DEBUG:Ljava/lang/String; = "persist.sys.oputil.debug"

.field private static sDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OnePlusUtil;->DEBUG_ONEPLUS:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/OnePlusUtil;->sDebug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean p0, Lcom/android/server/OnePlusUtil;->sDebug:Z

    const-string v0, "persist.sys.oputil.debug"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/android/server/OnePlusUtil;->sDebug:Z

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/OnePlusUtil;->sDebug:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/OnePlusUtil;->DEBUG_ONEPLUS:Z

    return v0
.end method


# virtual methods
.method public addUidtoTouchWindowUids(IILjava/lang/String;III)V
    .locals 7

    invoke-static {}, Lcom/android/server/OnePlusUtil$you;->getInstance()Lcom/android/server/OnePlusUtil$you;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/OnePlusUtil$you;->addUidtoTouchWindowUids(IILjava/lang/String;III)V

    return-void
.end method

.method public dynamicallyConfigAMSLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/server/am/zta;->you(Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    return-void
.end method

.method public dynamicallyConfigDisplayLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/display/DisplayManagerServiceDynamicLogConfig;->dynamicallyConfigLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public dynamicallyConfigPMSLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/server/pm/dma;->you(Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    return-void
.end method

.method public dynamicallyConfigWMSLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/server/wm/b;->you(Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    return-void
.end method

.method public onFindFocusedWindow()V
    .locals 0

    invoke-static {}, Lcom/android/server/OnePlusUtil$you;->getInstance()Lcom/android/server/OnePlusUtil$you;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/OnePlusUtil$you;->onFindFocusedWindow()V

    return-void
.end method

.method public setFront(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/OnePlusUtil$zta;->setFront(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
