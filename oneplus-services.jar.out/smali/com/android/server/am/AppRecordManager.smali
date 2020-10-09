.class public Lcom/android/server/am/AppRecordManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppRecordManager$ListenerType;
    }
.end annotation


# static fields
.field public static final IN_USING:Z

.field public static final STATE_ACTIVE:I = 0x1

.field public static final STATE_IDLE:I = 0x2

.field public static final oi:I = -0x3e8

.field public static final qi:I = 0x0

.field public static final ri:I = 0x1

.field public static final ti:I = 0x2

.field public static final ui:I = 0x4

.field public static final vi:I = 0x8

.field public static final wi:I = 0x10

.field public static final xi:I = 0x20

.field public static final yi:I = 0x40

.field public static final zi:I = 0x80


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/AppRecordManagerService;->IN_USING:Z

    sput-boolean v0, Lcom/android/server/am/AppRecordManager;->IN_USING:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cjf(I)I
    .locals 1

    sget-boolean v0, Lcom/android/server/am/AppRecordManager;->IN_USING:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/AppRecordManagerService;->getHoldingFlag(I)I

    move-result p0

    return p0
.end method

.method public static ear(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "unknow"

    return-object p0

    :cond_0
    const-string p0, "IDLE"

    return-object p0

    :cond_1
    const-string p0, "ACTIVE"

    return-object p0

    :cond_2
    const-string p0, "GONE"

    return-object p0
.end method

.method public static fto(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const-string v1, "Sensor,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    const-string v1, "Audio,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    const-string v1, "Video,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    const-string v1, "Camera,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_4

    const-string v1, "Flashlight,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_5

    const-string v1, "Vibrator,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_6

    const-string v1, "GPS,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_7

    const-string v1, "Traffic,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    if-lez p0, :cond_8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_8
    const-string p0, "NONE"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOwnerUid(I)I
    .locals 1

    sget-boolean v0, Lcom/android/server/am/AppRecordManager;->IN_USING:Z

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/AppRecordManagerService;->getOwnerUid(I)I

    move-result p0

    return p0
.end method

.method public static getPackageNameFromUid(I)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/android/server/am/AppRecordManager;->IN_USING:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/AppRecordManagerService;->getPackageNameFromUid(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPackagesUsingFlag(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/am/AppRecordManager;->IN_USING:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/AppRecordManagerService;->getPackagesUsingFlag(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static getProcState(I)I
    .locals 1

    sget-boolean v0, Lcom/android/server/am/AppRecordManager;->IN_USING:Z

    if-nez v0, :cond_0

    const/16 p0, 0x14

    return p0

    :cond_0
    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/AppRecordManagerService;->getProcState(I)I

    move-result p0

    return p0
.end method

.method public static getSensorName(I)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/android/server/am/AppRecordManager;->IN_USING:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/AppRecordManagerService;->getSensorName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUidFromPackageName(Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/android/server/am/AppRecordManager;->IN_USING:Z

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/AppRecordManagerService;->getUidFromPackageName(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getUidState(I)I
    .locals 1

    sget-boolean v0, Lcom/android/server/am/AppRecordManager;->IN_USING:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/AppRecordManagerService;->getUidState(I)I

    move-result p0

    return p0
.end method

.method public static hmo(I)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/am/AppRecordManager;->IN_USING:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/android/server/am/AppRecordManager;->getUidState(I)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static ire(I)Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/AppRecordManager;->IN_USING:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/AppRecordManagerService;->isApp(I)Z

    move-result p0

    return p0
.end method

.method public static you(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/gwm;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/AppRecordManager;->IN_USING:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/am/ssp;->you(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/gwm;)V

    return-void
.end method

.method public static zta(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/gwm;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/AppRecordManager;->IN_USING:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/am/ssp;->getInstance()Lcom/android/server/am/ssp;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/gwm;)V

    return-void
.end method
