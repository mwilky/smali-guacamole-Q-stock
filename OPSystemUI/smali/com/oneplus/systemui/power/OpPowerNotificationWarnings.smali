.class public Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;
.super Ljava/lang/Object;
.source "OpPowerNotificationWarnings.java"


# static fields
.field protected static final OP_DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/oneplus/systemui/power/OpPowerUI;->OP_DEBUG:Z

    sput-boolean v0, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->OP_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getBatteryLevel()I
    .locals 2

    const-class v0, Lcom/android/systemui/power/PowerNotificationWarnings;

    const-string v1, "mBatteryLevel"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private getContext()Landroid/content/Context;
    .locals 2

    const-class v0, Lcom/android/systemui/power/PowerNotificationWarnings;

    const-string v1, "mContext"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method

.method private getFormattedTime(J)Ljava/lang/CharSequence;
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->getContext()Landroid/content/Context;

    move-result-object p0

    long-to-double p1, p1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private getWarning()Z
    .locals 2

    const-class v0, Lcom/android/systemui/power/PowerNotificationWarnings;

    const-string v1, "mWarning"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public computePowerSaveExtendTime(J)J
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide p0

    const-wide/16 v0, -0x1

    cmp-long p2, p0, v0

    if-nez p2, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0xc

    mul-long/2addr p0, v0

    const-wide/16 v0, 0x64

    div-long/2addr p0, v0

    return-wide p0
.end method

.method protected getBatteryLowDescription()Ljava/lang/String;
    .locals 10

    invoke-direct {p0}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->computePowerSaveExtendTime(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_0

    const-wide/32 v6, 0x927c0

    cmp-long v3, v1, v6

    if-ltz v3, :cond_0

    sget v3, Lcom/android/systemui/R$string;->battery_usage_extanded:I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->getFormattedTime(J)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v5, v4

    invoke-virtual {v0, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v3

    invoke-direct {p0}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->getBatteryLevel()I

    move-result p0

    int-to-double v6, p0

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    sget v3, Lcom/android/systemui/R$string;->battery_low_warning:I

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v4

    invoke-virtual {v0, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    sget-boolean v0, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->OP_DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBatteryLowDescription extendTime="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " str="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpPowerUI.Notification"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p0
.end method

.method protected isWarningNotificationShow()Z
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->getWarning()Z

    move-result p0

    return p0
.end method
