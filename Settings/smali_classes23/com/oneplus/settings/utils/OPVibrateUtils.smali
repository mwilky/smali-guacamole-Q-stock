.class public final Lcom/oneplus/settings/utils/OPVibrateUtils;
.super Ljava/lang/Object;
.source "OPVibrateUtils.java"


# static fields
.field private static final KEY_INCOMING_CALL_VIBRATE:Ljava/lang/String; = "incoming_call_vibrate_mode"

.field public static final OP_THREE_KEY_MODE_MUTE:I = 0x1

.field public static final OP_THREE_KEY_MODE_RINGTONE:I = 0x3

.field public static final OP_THREE_KEY_MODE_VIBRATE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OPVibrateUtils"

.field public static final VIBRATE_INTERVAL:I = 0x3e8

.field public static final VIBRATE_MODE_DYNAMIC:I = 0x5

.field public static final VIBRATE_MODE_FIVE:I = 0x4

.field public static final VIBRATE_MODE_FOUR:I = 0x3

.field public static final VIBRATE_MODE_ONE:I = 0x0

.field public static final VIBRATE_MODE_THREE:I = 0x2

.field public static final VIBRATE_MODE_TWO:I = 0x1

.field public static final VIBRATE_REPEAT_TYPE:I

.field private static final mAlarmVibratePattern:[J

.field private static sVibratePatternrhythm:[[J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [[J

    const/4 v1, 0x6

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0xa

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0xe

    new-array v2, v1, [J

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const/16 v2, 0x12

    new-array v2, v2, [J

    fill-array-data v2, :array_3

    const/4 v4, 0x3

    aput-object v2, v0, v4

    new-array v1, v1, [J

    fill-array-data v1, :array_4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/oneplus/settings/utils/OPVibrateUtils;->sVibratePatternrhythm:[[J

    new-array v0, v3, [J

    fill-array-data v0, :array_5

    sput-object v0, Lcom/oneplus/settings/utils/OPVibrateUtils;->mAlarmVibratePattern:[J

    return-void

    :array_0
    .array-data 8
        -0x2
        0x0
        0x3e8
        0x3e8
        0x3e8
        0x3e8
    .end array-data

    :array_1
    .array-data 8
        -0x2
        0x0
        0x1f4
        0xfa
        0xa
        0x3e8
        0x1f4
        0xfa
        0xa
        0x3e8
    .end array-data

    :array_2
    .array-data 8
        -0x2
        0x0
        0x12c
        0x190
        0x12c
        0x190
        0x12c
        0x3e8
        0x12c
        0x190
        0x12c
        0x190
        0x12c
        0x3e8
    .end array-data

    :array_3
    .array-data 8
        -0x2
        0x0
        0x1e
        0x50
        0x1e
        0x50
        0x32
        0xb4
        0x258
        0x3e8
        0x1e
        0x50
        0x1e
        0x50
        0x32
        0xb4
        0x258
        0x3e8
    .end array-data

    :array_4
    .array-data 8
        -0x2
        0x0
        0x50
        0xc8
        0x258
        0x96
        0xa
        0x3e8
        0x50
        0xc8
        0x258
        0x96
        0xa
        0x3e8
    .end array-data

    :array_5
    .array-data 8
        0x1f4
        0x1f4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRealXVibrateIndexToValue(I)I
    .locals 3

    const/4 v0, 0x5

    if-eqz p0, :cond_5

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v2, 0x2

    if-eq p0, v2, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v2, 0x4

    if-eq p0, v2, :cond_1

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    return v2

    :cond_1
    return v1

    :cond_2
    return v2

    :cond_3
    return v1

    :cond_4
    const/4 v0, 0x0

    return v0

    :cond_5
    return v0
.end method

.method public static getRealXVibrateValueToIndex(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_5

    const/4 v1, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v1, :cond_3

    const/4 v1, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v1, :cond_1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    return v0

    :cond_4
    return v1

    :cond_5
    return v0
.end method

.method public static getRingtoneVibrateMode(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "incoming_call_vibrate_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getVibrateLevel(I)I
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    const/4 v1, -0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, -0x3

    return v0

    :cond_1
    return v1

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public static isDynamicVibrateMode(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "incoming_call_vibrate_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isSystemRingtone(Landroid/net/Uri;I)Z
    .locals 1

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v0, p0, p1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isSystemRingtone(Landroid/content/Context;Landroid/net/Uri;I)Z

    move-result v0

    return v0
.end method

.method public static isThreeKeyMuteMode(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "three_Key_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    return v0
.end method

.method public static isThreeKeyRingMode(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "three_Key_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    return v0
.end method

.method public static isThreeKeyVibrateMode(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "three_Key_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    return v0
.end method

.method public static isVibrateWhenRinging(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "vibrate_when_ringing"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    move v0, v1

    return v0
.end method

.method public static startVibrateByIndex(Landroid/os/Vibrator;I)V
    .locals 13

    if-eqz p0, :cond_9

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "incoming_call_vibrate_intensity"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Vibrator;->cancel()V

    const/4 v2, 0x0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result v3

    const-wide/16 v4, -0x3

    const-wide/16 v6, -0x2

    const/4 v8, 0x2

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v3, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    if-nez v0, :cond_1

    sget-object v3, Lcom/oneplus/settings/utils/OPVibrateUtils;->sVibratePatternrhythm:[[J

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    aput-wide v9, v3, v11

    goto :goto_0

    :cond_1
    if-ne v0, v12, :cond_2

    sget-object v3, Lcom/oneplus/settings/utils/OPVibrateUtils;->sVibratePatternrhythm:[[J

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    aput-wide v6, v3, v11

    goto :goto_0

    :cond_2
    if-ne v0, v8, :cond_3

    sget-object v3, Lcom/oneplus/settings/utils/OPVibrateUtils;->sVibratePatternrhythm:[[J

    add-int/lit8 v6, p1, -0x1

    aget-object v3, v3, v6

    aput-wide v4, v3, v11

    :cond_3
    :goto_0
    sget-object v3, Lcom/oneplus/settings/utils/OPVibrateUtils;->sVibratePatternrhythm:[[J

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    invoke-virtual {p0, v3, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startVibrateByIndex--index:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pattern:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/oneplus/settings/utils/OPVibrateUtils;->sVibratePatternrhythm:[[J

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OPVibrateUtils"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const/4 v3, 0x5

    if-lt p1, v3, :cond_5

    const/4 p1, 0x0

    :cond_5
    if-nez v0, :cond_6

    sget-object v3, Lcom/oneplus/settings/utils/OPVibrateUtils;->sVibratePatternrhythm:[[J

    aget-object v3, v3, p1

    aput-wide v9, v3, v11

    goto :goto_1

    :cond_6
    if-ne v0, v12, :cond_7

    sget-object v3, Lcom/oneplus/settings/utils/OPVibrateUtils;->sVibratePatternrhythm:[[J

    aget-object v3, v3, p1

    aput-wide v6, v3, v11

    goto :goto_1

    :cond_7
    if-ne v0, v8, :cond_8

    sget-object v3, Lcom/oneplus/settings/utils/OPVibrateUtils;->sVibratePatternrhythm:[[J

    aget-object v3, v3, p1

    aput-wide v4, v3, v11

    :cond_8
    :goto_1
    sget-object v3, Lcom/oneplus/settings/utils/OPVibrateUtils;->sVibratePatternrhythm:[[J

    aget-object v3, v3, p1

    invoke-virtual {p0, v3, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_9
    :goto_2
    return-void
.end method

.method public static startVibrateByType(Landroid/os/Vibrator;)V
    .locals 6

    if-eqz p0, :cond_4

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "incoming_call_vibrate_intensity"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Vibrator;->cancel()V

    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPVibrateUtils;->getRingtoneVibrateMode(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    sget-object v3, Lcom/oneplus/settings/utils/OPVibrateUtils;->sVibratePatternrhythm:[[J

    aget-object v3, v3, v1

    const-wide/16 v4, -0x1

    aput-wide v4, v3, v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    sget-object v3, Lcom/oneplus/settings/utils/OPVibrateUtils;->sVibratePatternrhythm:[[J

    aget-object v3, v3, v1

    const-wide/16 v4, -0x2

    aput-wide v4, v3, v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    sget-object v3, Lcom/oneplus/settings/utils/OPVibrateUtils;->sVibratePatternrhythm:[[J

    aget-object v3, v3, v1

    const-wide/16 v4, -0x3

    aput-wide v4, v3, v2

    :cond_3
    :goto_0
    sget-object v3, Lcom/oneplus/settings/utils/OPVibrateUtils;->sVibratePatternrhythm:[[J

    aget-object v3, v3, v1

    invoke-virtual {p0, v3, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startVibrateByType--type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pattern:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/oneplus/settings/utils/OPVibrateUtils;->sVibratePatternrhythm:[[J

    aget-object v3, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OPVibrateUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public static startVibrateByType(Landroid/os/Vibrator;I)V
    .locals 5

    if-eqz p0, :cond_4

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "incoming_call_vibrate_intensity"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Vibrator;->cancel()V

    const/4 v1, 0x5

    if-lt p1, v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-object v2, Lcom/oneplus/settings/utils/OPVibrateUtils;->sVibratePatternrhythm:[[J

    aget-object v2, v2, p1

    const-wide/16 v3, -0x1

    aput-wide v3, v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    sget-object v2, Lcom/oneplus/settings/utils/OPVibrateUtils;->sVibratePatternrhythm:[[J

    aget-object v2, v2, p1

    const-wide/16 v3, -0x2

    aput-wide v3, v2, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    sget-object v2, Lcom/oneplus/settings/utils/OPVibrateUtils;->sVibratePatternrhythm:[[J

    aget-object v2, v2, p1

    const-wide/16 v3, -0x3

    aput-wide v3, v2, v1

    :cond_3
    :goto_0
    sget-object v2, Lcom/oneplus/settings/utils/OPVibrateUtils;->sVibratePatternrhythm:[[J

    aget-object v2, v2, p1

    invoke-virtual {p0, v2, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_4
    return-void
.end method

.method public static startVibrateForAlarm(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Vibrator;)V
    .locals 5

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPVibrateUtils;->isThreeKeyRingMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1, v1}, Lcom/oneplus/settings/utils/OPVibrateUtils;->isSystemRingtone(Landroid/net/Uri;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0, p1, p2}, Lcom/oneplus/settings/utils/OPVibrateUtils;->startVibrateWithRingtoneUri(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Vibrator;)V

    goto :goto_0

    :cond_1
    const-string v2, "OPVibrateUtils"

    const-string v3, "startVibrateForAlarm--normal-vibrate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    const/4 v4, 0x0

    if-lt v2, v3, :cond_2

    sget-object v2, Lcom/oneplus/settings/utils/OPVibrateUtils;->mAlarmVibratePattern:[J

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v3, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {p2, v2, v4, v1}, Landroid/os/Vibrator;->vibrate([JILandroid/media/AudioAttributes;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/oneplus/settings/utils/OPVibrateUtils;->mAlarmVibratePattern:[J

    invoke-virtual {p2, v1, v4}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static startVibrateForNotification(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Vibrator;)V
    .locals 2

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPVibrateUtils;->isThreeKeyVibrateMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPVibrateUtils;->isThreeKeyMuteMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/oneplus/settings/utils/OPVibrateUtils;->isSystemRingtone(Landroid/net/Uri;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1, p2}, Lcom/oneplus/settings/utils/OPVibrateUtils;->startVibrateWithRingtoneUri(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Vibrator;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPVibrateUtils;->isThreeKeyVibrateMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OPVibrateUtils"

    const-string v1, "startVibrateForNotification--normal-vibrate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public static startVibrateForRingtone(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Vibrator;)V
    .locals 1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oneplus/settings/utils/OPVibrateUtils;->isSystemRingtone(Landroid/net/Uri;I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPVibrateUtils;->isThreeKeyMuteMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPVibrateUtils;->isVibrateWhenRinging(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPVibrateUtils;->isThreeKeyVibrateMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPVibrateUtils;->isDynamicVibrateMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPVibrateUtils;->isThreeKeyRingMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPVibrateUtils;->isDynamicVibrateMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, p1, p2}, Lcom/oneplus/settings/utils/OPVibrateUtils;->startVibrateWithRingtoneUri(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Vibrator;)V

    goto :goto_0

    :cond_2
    invoke-static {p2}, Lcom/oneplus/settings/utils/OPVibrateUtils;->startVibrateByType(Landroid/os/Vibrator;)V

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    return-void

    :cond_5
    :goto_0
    return-void
.end method

.method public static startVibrateForSms(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Vibrator;)V
    .locals 2

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPVibrateUtils;->isThreeKeyVibrateMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPVibrateUtils;->isThreeKeyMuteMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/oneplus/settings/utils/OPVibrateUtils;->isSystemRingtone(Landroid/net/Uri;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1, p2}, Lcom/oneplus/settings/utils/OPVibrateUtils;->startVibrateWithRingtoneUri(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Vibrator;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPVibrateUtils;->isThreeKeyVibrateMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OPVibrateUtils"

    const-string v1, "startVibrateForSms--normal--vibrate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public static startVibrateWithRingtoneUri(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Vibrator;)V
    .locals 10

    invoke-virtual {p2}, Landroid/os/Vibrator;->cancel()V

    invoke-static {p0, p1}, Lcom/oneplus/util/RingtoneManagerUtils;->getVibratorSceneId(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Vibrator;->setVibratorEffect(I)I

    move-result v1

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x1

    const-string v6, "incoming_call_vibrate_intensity"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x3

    new-array v6, v6, [J

    invoke-static {v4}, Lcom/oneplus/settings/utils/OPVibrateUtils;->getVibrateLevel(I)I

    move-result v7

    int-to-long v7, v7

    const/4 v9, 0x0

    aput-wide v7, v6, v9

    aput-wide v2, v6, v5

    int-to-long v7, v1

    const/4 v5, 0x2

    aput-wide v7, v6, v5

    move-object v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OPVibrateUtils--sceneId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " ringtoneUri:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " vibrateTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " delayTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " vibrateLevel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/oneplus/settings/utils/OPVibrateUtils;->getVibrateLevel(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OPVibrateUtils"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, v5, v9}, Landroid/os/Vibrator;->vibrate([JI)V

    return-void
.end method
