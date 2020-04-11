.class public Lcom/android/server/am/vdw$you;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/vdw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "you"
.end annotation


# static fields
.field public static final IN_USING:Z = true

.field private static mInstance:Lcom/android/server/am/vdw$you;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getInstance()Lcom/android/server/am/vdw$you;
    .locals 1

    sget-object v0, Lcom/android/server/am/vdw$you;->mInstance:Lcom/android/server/am/vdw$you;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/vdw$you;

    invoke-direct {v0}, Lcom/android/server/am/vdw$you;-><init>()V

    sput-object v0, Lcom/android/server/am/vdw$you;->mInstance:Lcom/android/server/am/vdw$you;

    :cond_0
    sget-object v0, Lcom/android/server/am/vdw$you;->mInstance:Lcom/android/server/am/vdw$you;

    return-object v0
.end method

.method public static isDeliverDisplayChange(I)Z
    .locals 1

    const/16 v0, 0x2710

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {}, Lcom/android/server/am/vdw$you;->getInstance()Lcom/android/server/am/vdw$you;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/android/server/am/vdw$you;->jb(I)Z

    move-result p0

    return p0
.end method

.method private jb(I)Z
    .locals 2

    invoke-static {p1}, Lcom/android/server/am/AppRecordManager;->hmo(I)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/android/server/OnePlusUtil$you;->getInstance()Lcom/android/server/OnePlusUtil$you;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/OnePlusUtil$you;->gck(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/AppRecordManager;->getProcState(I)I

    move-result p0

    const/4 v1, 0x5

    if-ge p0, v1, :cond_1

    return v0

    :cond_1
    invoke-static {}, Lcom/android/server/am/vdw;->access$200()Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isDeliverDisplayChangeLock uid("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") ret=false."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BFP"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    return v0
.end method
