.class Lcom/android/server/engineer/rtg;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/engineer/rtg$zta;
    }
.end annotation


# static fields
.field private static QC:Lsis/you/zta/zta/zta/zta; = null

.field private static RC:Lcom/android/server/engineer/rtg$zta; = null

.field private static final TAG:Ljava/lang/String; = "OneplusEngineerNative"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/engineer/rtg$zta;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/engineer/rtg$zta;-><init>(Lcom/android/server/engineer/tsu;)V

    sput-object v0, Lcom/android/server/engineer/rtg;->RC:Lcom/android/server/engineer/rtg$zta;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static C(Ljava/lang/String;)[B
    .locals 2

    invoke-static {}, Lcom/android/server/engineer/rtg;->co()V

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/rtg;->QC:Lsis/you/zta/zta/zta/zta;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/engineer/rtg;->QC:Lsis/you/zta/zta/zta/zta;

    invoke-interface {v0, p0}, Lsis/you/zta/zta/zta/zta;->tsu(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/engineer/rtg;->wtn(Ljava/util/List;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nativeReadOemUsageRecords exception caught "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OneplusEngineerNative"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static Gc()Z
    .locals 3

    invoke-static {}, Lcom/android/server/engineer/rtg;->co()V

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/rtg;->QC:Lsis/you/zta/zta/zta/zta;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/engineer/rtg;->QC:Lsis/you/zta/zta/zta/zta;

    invoke-interface {v0}, Lsis/you/zta/zta/zta/zta;->qbh()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeGetPartionWriteProtectState exception caught "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneplusEngineerNative"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static Hc()[B
    .locals 3

    invoke-static {}, Lcom/android/server/engineer/rtg;->co()V

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/rtg;->QC:Lsis/you/zta/zta/zta/zta;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/engineer/rtg;->QC:Lsis/you/zta/zta/zta/zta;

    invoke-interface {v0}, Lsis/you/zta/zta/zta/zta;->getProductLineTestResult()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/engineer/rtg;->wtn(Ljava/util/List;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeGetProductLineTestResult exception caught "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneplusEngineerNative"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static Ic()Z
    .locals 3

    invoke-static {}, Lcom/android/server/engineer/rtg;->co()V

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/rtg;->QC:Lsis/you/zta/zta/zta/zta;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/engineer/rtg;->QC:Lsis/you/zta/zta/zta/zta;

    invoke-interface {v0}, Lsis/you/zta/zta/zta/zta;->resetProductLineTestResult()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeResetProductLineTestResult exception caught "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneplusEngineerNative"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static Jc()[B
    .locals 1

    const v0, 0x186a1

    invoke-static {v0}, Lcom/android/server/engineer/rtg;->s(I)[B

    move-result-object v0

    return-object v0
.end method

.method static c(Z)Z
    .locals 2

    invoke-static {}, Lcom/android/server/engineer/rtg;->co()V

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/rtg;->QC:Lsis/you/zta/zta/zta/zta;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/engineer/rtg;->QC:Lsis/you/zta/zta/zta/zta;

    invoke-interface {v0, p0}, Lsis/you/zta/zta/zta/zta;->you(Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nativeSetPartionWriteProtectState exception caught "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OneplusEngineerNative"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static co()V
    .locals 4

    :try_start_0
    invoke-static {}, Lsis/you/zta/zta/zta/zta;->getService()Lsis/you/zta/zta/zta/zta;

    move-result-object v0

    sput-object v0, Lcom/android/server/engineer/rtg;->QC:Lsis/you/zta/zta/zta/zta;

    sget-object v0, Lcom/android/server/engineer/rtg;->QC:Lsis/you/zta/zta/zta/zta;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/engineer/rtg;->QC:Lsis/you/zta/zta/zta/zta;

    sget-object v1, Lcom/android/server/engineer/rtg;->RC:Lcom/android/server/engineer/rtg$zta;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lsis/you/zta/zta/zta/zta;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception caught "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneplusEngineerNative"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/engineer/rtg;->QC:Lsis/you/zta/zta/zta/zta;

    :cond_0
    :goto_0
    return-void
.end method

.method private static fto([B)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static oif(II)Z
    .locals 1

    invoke-static {}, Lcom/android/server/engineer/rtg;->co()V

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/rtg;->QC:Lsis/you/zta/zta/zta/zta;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/engineer/rtg;->QC:Lsis/you/zta/zta/zta/zta;

    invoke-interface {v0, p0, p1}, Lsis/you/zta/zta/zta/zta;->setProductLineTestResult(II)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "nativeSetProductLineTestResult exception caught "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneplusEngineerNative"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static qbh(II)[B
    .locals 1

    invoke-static {}, Lcom/android/server/engineer/rtg;->co()V

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/rtg;->QC:Lsis/you/zta/zta/zta/zta;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/engineer/rtg;->QC:Lsis/you/zta/zta/zta/zta;

    invoke-interface {v0, p0, p1}, Lsis/you/zta/zta/zta/zta;->getBadBatteryConfig(II)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/engineer/rtg;->wtn(Ljava/util/List;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "nativeGetBadBatteryConfig exception caught "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneplusEngineerNative"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static s(I)[B
    .locals 2

    invoke-static {}, Lcom/android/server/engineer/rtg;->co()V

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/rtg;->QC:Lsis/you/zta/zta/zta/zta;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/engineer/rtg;->QC:Lsis/you/zta/zta/zta/zta;

    invoke-interface {v0, p0}, Lsis/you/zta/zta/zta/zta;->readEngineerData(I)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/engineer/rtg;->wtn(Ljava/util/List;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nativeReadEngineerData exception caught "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OneplusEngineerNative"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static ssp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/engineer/rtg;->co()V

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/rtg;->QC:Lsis/you/zta/zta/zta/zta;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/engineer/rtg;->QC:Lsis/you/zta/zta/zta/zta;

    invoke-interface {v0, p0, p1}, Lsis/you/zta/zta/zta/zta;->saveOneplusUsageRecords(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "nativeSaveOemUsageRecords exception caught "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneplusEngineerNative"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static wtn(Ljava/util/List;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static zta(II[B)I
    .locals 1

    invoke-static {}, Lcom/android/server/engineer/rtg;->co()V

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/rtg;->QC:Lsis/you/zta/zta/zta/zta;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/engineer/rtg;->QC:Lsis/you/zta/zta/zta/zta;

    invoke-static {p2}, Lcom/android/server/engineer/rtg;->fto([B)Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {v0, p0, p1, p2}, Lsis/you/zta/zta/zta/zta;->zta(IILjava/util/ArrayList;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "nativeSetBatteryBatteryConfig exception caught "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneplusEngineerNative"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static zta(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/android/server/engineer/rtg;->co()V

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/rtg;->QC:Lsis/you/zta/zta/zta/zta;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/engineer/rtg;->QC:Lsis/you/zta/zta/zta/zta;

    invoke-interface {v0, p0}, Lsis/you/zta/zta/zta/zta;->zta(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "translateCommand exception caught "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OneplusEngineerNative"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic zta(Lsis/you/zta/zta/zta/zta;)Lsis/you/zta/zta/zta/zta;
    .locals 0

    sput-object p0, Lcom/android/server/engineer/rtg;->QC:Lsis/you/zta/zta/zta/zta;

    return-object p0
.end method

.method static zta(I[BI)Z
    .locals 1

    invoke-static {}, Lcom/android/server/engineer/rtg;->co()V

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/rtg;->QC:Lsis/you/zta/zta/zta/zta;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/engineer/rtg;->QC:Lsis/you/zta/zta/zta/zta;

    invoke-static {p1}, Lcom/android/server/engineer/rtg;->fto([B)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Lsis/you/zta/zta/zta/zta;->zta(ILjava/util/ArrayList;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "nativeSaveEngineerData exception caught "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneplusEngineerNative"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
