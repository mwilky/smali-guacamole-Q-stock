.class public Lcom/oneplus/android/server/rtg;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final RX:I = 0x0

.field private static final SX:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MotorCalibrateHelper"

.field private static final UX:I = 0x2

.field private static final VX:I = 0xc

.field private static final WX:I = 0xb

.field private static final XX:I = 0x2

.field private static final YX:I = 0x3

.field private static final ZX:I = 0x4

.field private static final _X:I = 0x5

.field public static final aY:I = 0x6

.field public static final bY:I = 0x7

.field public static final cY:I = 0x8

.field public static final dY:I = 0x9

.field public static final eY:I = 0xa

.field public static final fY:I = 0xb

.field private static final gY:I = -0x1

.field private static final hY:I = 0x4

.field private static final iY:[I

.field private static final jY:[I

.field private static kY:I = 0x0

.field private static lY:I = 0x0

.field private static final nY:Ljava/lang/String; = "/sys/bus/platform/devices/vendor:motor_pl/hall_data"

.field private static final oY:Ljava/lang/String; = "/sys/bus/platform/devices/vendor:motor_pl/hall_calibration"

.field private static final pY:Ljava/lang/String; = "/mnt/vendor/persist/engineermode/hall_calibration"

.field private static qY:[I

.field private static rY:[I

.field private static sY:[Ljava/lang/String;

.field private static tY:Ljava/lang/String;

.field public static uY:I

.field public static vY:I

.field public static wY:I

.field public static xY:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/android/server/rtg;->iY:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/oneplus/android/server/rtg;->jY:[I

    const/4 v0, 0x2

    sput v0, Lcom/oneplus/android/server/rtg;->kY:I

    const/4 v1, 0x3

    sput v1, Lcom/oneplus/android/server/rtg;->lY:I

    const/16 v1, 0xc

    new-array v2, v1, [I

    sput-object v2, Lcom/oneplus/android/server/rtg;->qY:[I

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/android/server/rtg;->rY:[I

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/oneplus/android/server/rtg;->sY:[Ljava/lang/String;

    const-string v0, "2"

    sput-object v0, Lcom/oneplus/android/server/rtg;->tY:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/oneplus/android/server/rtg;->uY:I

    sput v0, Lcom/oneplus/android/server/rtg;->vY:I

    const/16 v0, 0x8

    sput v0, Lcom/oneplus/android/server/rtg;->wY:I

    const/16 v0, 0x28

    sput v0, Lcom/oneplus/android/server/rtg;->xY:I

    return-void

    :array_0
    .array-data 4
        0x19
        0x14
        0xf
        0xa
    .end array-data

    :array_1
    .array-data 4
        0x28
        0x23
        0x1e
        0x19
        0x14
        0xf
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Z)Z
    .locals 7

    invoke-static {}, Lcom/oneplus/android/server/rtg;->qe()[I

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    array-length v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lcom/oneplus/android/server/rtg;->pe()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    array-length v4, v2

    const/16 v5, 0xc

    if-eq v4, v5, :cond_2

    goto :goto_0

    :cond_2
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x5

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v4, "MotorCalibrateHelper"

    if-eqz p0, :cond_3

    aget v5, v0, v1

    sub-int/2addr v5, v3

    sget v6, Lcom/oneplus/android/server/rtg;->wY:I

    if-le v5, v6, :cond_3

    aget v5, v0, v1

    sub-int/2addr v5, v3

    sget v6, Lcom/oneplus/android/server/rtg;->xY:I

    if-ge v5, v6, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedCalib hallsData[0]: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " nearHall1: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput v1, Lcom/oneplus/android/server/rtg;->uY:I

    return v1

    :cond_3
    if-nez p0, :cond_4

    const/4 p0, 0x1

    aget v3, v0, p0

    sub-int/2addr v3, v2

    sget v5, Lcom/oneplus/android/server/rtg;->wY:I

    if-le v3, v5, :cond_4

    aget v3, v0, p0

    sub-int/2addr v3, v2

    sget v5, Lcom/oneplus/android/server/rtg;->xY:I

    if-ge v3, v5, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNeedCalib hallsData[1]: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, v0, p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " farHall2: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput v1, Lcom/oneplus/android/server/rtg;->vY:I

    :cond_4
    :goto_0
    return v1
.end method

.method private static kth(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writeMotorCalibData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotorCalibrateHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lsis/you/you/you/zta/zta;->getService()Lsis/you/you/you/zta/zta;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lsis/you/you/you/zta/zta;->zta(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "writeMotorCalibData throws exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static lqr(II)[B
    .locals 3

    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    if-ge v1, p1, :cond_0

    mul-int/lit8 v2, v1, 0x8

    shr-int v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static oe()V
    .locals 7

    invoke-static {}, Lcom/oneplus/android/server/rtg;->qe()[I

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/server/rtg;->rY:[I

    sget-object v0, Lcom/oneplus/android/server/rtg;->rY:[I

    if-eqz v0, :cond_0

    sget-object v1, Lcom/oneplus/android/server/rtg;->qY:[I

    const/4 v2, 0x0

    aget v3, v0, v2

    add-int/lit16 v3, v3, -0x96

    aput v3, v1, v2

    const/4 v3, 0x2

    aget v4, v0, v2

    sget-object v5, Lcom/oneplus/android/server/rtg;->iY:[I

    sget v6, Lcom/oneplus/android/server/rtg;->kY:I

    aget v5, v5, v6

    sub-int/2addr v4, v5

    aput v4, v1, v3

    const/4 v3, 0x3

    const/4 v4, 0x1

    aget v0, v0, v4

    add-int/2addr v0, v4

    aput v0, v1, v3

    :goto_0
    sget-object v0, Lcom/oneplus/android/server/rtg;->qY:[I

    array-length v0, v0

    if-ge v2, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downedCalib i : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "sHallCaliDataInt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/android/server/rtg;->qY:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotorCalibrateHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static pe()Ljava/lang/String;
    .locals 2

    const-string v0, "MotorCalibrateHelper"

    const-string v1, "/sys/bus/platform/devices/vendor:motor_pl/hall_calibration"

    invoke-static {v0, v1}, Lcom/oneplus/android/server/rtg;->readStringFromFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static qe()[I
    .locals 5

    const-string v0, "MotorCalibrateHelper"

    const-string v1, "/sys/bus/platform/devices/vendor:motor_pl/hall_data"

    invoke-static {v0, v1}, Lcom/oneplus/android/server/rtg;->readStringFromFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHallData hallData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    new-array v3, v2, [I

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v4, v1

    if-ne v4, v2, :cond_0

    const/4 v2, 0x0

    :try_start_0
    aget-object v4, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v3, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "hall data parse error : "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return-object v3
.end method

.method public static re()Z
    .locals 11

    const-string v0, ", tempCalibData : "

    const-string v1, "MotorCalibrateHelper"

    const-string v2, "/mnt/vendor/persist/engineermode/hall_calibration"

    invoke-static {v1, v2}, Lcom/oneplus/android/server/rtg;->readStringFromFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    const/16 v4, 0xc

    :try_start_0
    new-array v5, v4, [Ljava/lang/String;

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    array-length v6, v2

    const/16 v7, 0xb

    if-eq v6, v4, :cond_1

    array-length v6, v2

    if-eq v6, v7, :cond_1

    goto/16 :goto_2

    :cond_1
    move v6, v3

    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v8, v2, v6

    aput-object v8, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "calibData : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v6, v2

    if-ne v6, v7, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "old parameter, tempCalibData.length :  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/oneplus/android/server/rtg;->tY:Ljava/lang/String;

    aput-object v6, v5, v7

    goto :goto_1

    :cond_3
    aget-object v6, v2, v7

    aput-object v6, v5, v7

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "after judge length, calibData : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s"

    new-array v4, v4, [Ljava/lang/Object;

    aget-object v6, v5, v3

    aput-object v6, v4, v3

    const/4 v6, 0x1

    aget-object v8, v5, v6

    aput-object v8, v4, v6

    const/4 v8, 0x2

    aget-object v9, v5, v8

    aput-object v9, v4, v8

    const/4 v8, 0x3

    aget-object v9, v5, v8

    aput-object v9, v4, v8

    const/4 v8, 0x4

    aget-object v9, v5, v8

    aput-object v9, v4, v8

    const/4 v9, 0x5

    aget-object v10, v5, v9

    aput-object v10, v4, v9

    const/4 v9, 0x6

    aget-object v10, v5, v9

    aput-object v10, v4, v9

    const/4 v9, 0x7

    aget-object v10, v5, v9

    aput-object v10, v4, v9

    const/16 v9, 0x8

    aget-object v10, v5, v9

    aput-object v10, v4, v9

    const/16 v9, 0x9

    aget-object v10, v5, v9

    aput-object v10, v4, v9

    const/16 v9, 0xa

    aget-object v10, v5, v9

    aput-object v10, v4, v9

    aget-object v5, v5, v7

    aput-object v5, v4, v7

    invoke-static {v0, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newCalibrationData : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    invoke-static {v8, v0}, Lcom/oneplus/android/server/rtg;->kth(ILjava/lang/String;)V

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initHallCalibrationData : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_5
    :goto_2
    const-string v0, "invalid hall data need to be saved"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    const-string v2, "failed to init hall data, "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method private static readStringFromFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "readStringFromFile io close exception :"

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_7

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "MotorCalibrateHelper"

    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readStringFromFile file not exists : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_1
    move-exception v2

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v3, v1

    goto :goto_5

    :catch_2
    move-exception v2

    move-object v3, v1

    :goto_3
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readStringFromFile io exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :cond_3
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readStringFromFile path:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", result:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_5
    if-eqz v3, :cond_4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_6
    throw p1

    :cond_5
    :goto_7
    const-string p1, "readStringFromFile invalid file path"

    goto/16 :goto_1
.end method

.method public static se()Z
    .locals 12

    const-string v0, "150"

    const-string v1, "150"

    const-string v2, "480"

    const-string v3, "10"

    const-string v4, "10"

    const-string v5, "480"

    const-string v6, "500"

    const-string v7, "10"

    const-string v8, "10"

    const-string v9, "500"

    const-string v10, "1500"

    const-string v11, "2"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/oneplus/android/server/rtg;->pe()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    sget-object v5, Lcom/oneplus/android/server/rtg;->sY:[Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aget-object v9, v1, v4

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MotorCalibrateHelper"

    const-string v3, "number format exception, "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-static {v0}, Lcom/oneplus/android/server/rtg;->you([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static te()Z
    .locals 8

    sget-object v0, Lcom/oneplus/android/server/rtg;->qY:[I

    invoke-static {v0}, Lcom/oneplus/android/server/rtg;->you([I)Z

    move-result v0

    const-string v1, "MotorCalibrateHelper"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/16 v0, 0xc

    new-array v3, v0, [Ljava/lang/String;

    move v4, v2

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v0, :cond_0

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    sget-object v7, Lcom/oneplus/android/server/rtg;->qY:[I

    aget v7, v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v2

    const-string v7, "%d"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lcom/oneplus/android/server/rtg;->you([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oneplus/android/server/rtg;->pe()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caliData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    :goto_1
    sget-object v0, Lcom/oneplus/android/server/rtg;->sY:[Ljava/lang/String;

    invoke-static {v0}, Lcom/oneplus/android/server/rtg;->you([Ljava/lang/String;)Z

    return v2

    :cond_2
    const-string v0, "isCalibrationDataAvailble false"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static ue()V
    .locals 6

    invoke-static {}, Lcom/oneplus/android/server/rtg;->qe()[I

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/server/rtg;->rY:[I

    sget-object v0, Lcom/oneplus/android/server/rtg;->rY:[I

    if-eqz v0, :cond_0

    sget-object v1, Lcom/oneplus/android/server/rtg;->qY:[I

    const/4 v2, 0x1

    aget v3, v0, v2

    add-int/lit16 v3, v3, -0x96

    aput v3, v1, v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    aget v5, v0, v4

    add-int/2addr v5, v2

    aput v5, v1, v3

    const/4 v3, 0x5

    aget v0, v0, v2

    sget-object v2, Lcom/oneplus/android/server/rtg;->jY:[I

    sget v5, Lcom/oneplus/android/server/rtg;->lY:I

    aget v2, v2, v5

    sub-int/2addr v0, v2

    aput v0, v1, v3

    :goto_0
    sget-object v0, Lcom/oneplus/android/server/rtg;->qY:[I

    array-length v0, v0

    if-ge v4, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upedCalib i : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "sHallCaliDataInt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/android/server/rtg;->qY:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotorCalibrateHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static writeStringToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "writeStringToFile io close exception :"

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_6

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "MotorCalibrateHelper"

    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "writeStringToFile file not exists : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeStringToFile write "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v3, v4

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v4, v3

    goto :goto_4

    :catch_2
    move-exception p1

    :goto_2
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeStringToFile io exception:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_3
    :goto_3
    return v1

    :goto_4
    if-eqz v4, :cond_4

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_5
    throw p1

    :cond_5
    :goto_6
    const-string p1, "writeStringToFile invalid file path or value"

    goto/16 :goto_0
.end method

.method public static you([I)Z
    .locals 6

    const/4 v0, 0x0

    const-string v1, "MotorCalibrateHelper"

    if-eqz p0, :cond_3

    array-length v2, p0

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x2

    aget v3, p0, v2

    const/16 v4, 0x1d1

    const-string v5, " is overflow"

    if-le v3, v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hallCaliData[HALL_CALIBRATION_DATA_NEAR_HALL_ONE_INDEX] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, p0, v2

    :goto_0
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 v2, 0x5

    aget v3, p0, v2

    const/16 v4, 0x1e0

    if-le v3, v4, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hallCaliData[HALL_CALIBRATION_DATA_FAR_HALL_TWO_INDEX] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, p0, v2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_2
    const-string p0, "invalid hall data need to be saved"

    goto :goto_1
.end method

.method public static you([Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    const-string v1, "MotorCalibrateHelper"

    if-eqz p0, :cond_2

    array-length v2, p0

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    aget-object v4, p0, v0

    aput-object v4, v3, v0

    const/4 v0, 0x1

    aget-object v4, p0, v0

    aput-object v4, v3, v0

    const/4 v4, 0x2

    aget-object v5, p0, v4

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aget-object v5, p0, v4

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aget-object v5, p0, v4

    aput-object v5, v3, v4

    const/4 v5, 0x5

    aget-object v6, p0, v5

    aput-object v6, v3, v5

    const/4 v5, 0x6

    aget-object v6, p0, v5

    aput-object v6, v3, v5

    const/4 v5, 0x7

    aget-object v6, p0, v5

    aput-object v6, v3, v5

    const/16 v5, 0x8

    aget-object v6, p0, v5

    aput-object v6, v3, v5

    const/16 v5, 0x9

    aget-object v6, p0, v5

    aput-object v6, v3, v5

    const/16 v5, 0xa

    aget-object v6, p0, v5

    aput-object v6, v3, v5

    const/16 v5, 0xb

    aget-object p0, p0, v5

    aput-object p0, v3, v5

    const-string p0, "%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s"

    invoke-static {v2, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveCalibrationData newCalibrationData ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/oneplus/android/server/vdb;->getInstance()Lcom/oneplus/android/server/vdb;

    move-result-object v2

    invoke-virtual {v2, v4, p0}, Lcom/oneplus/android/server/vdb;->kth(ILjava/lang/String;)I

    const-string v2, "/mnt/vendor/persist/engineermode/hall_calibration"

    invoke-static {v1, v2, p0}, Lcom/oneplus/android/server/rtg;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return v0

    :cond_2
    :goto_0
    const-string p0, "invalid hall data need to be saved"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
