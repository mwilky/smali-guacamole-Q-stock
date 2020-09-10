.class public Lcom/oneplus/settings/OPVibrateIntensity;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPVibrateIntensity.java"

# interfaces
.implements Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_INCOMING_CALL_VIBRATE_INTENSITY:Ljava/lang/String; = "incoming_call_vibrate_intensity"

.field private static final KEY_NOTICE_VIBRATE_INTENSITY:Ljava/lang/String; = "notice_vibrate_intensity"

.field private static final KEY_VIBRATE_ON_TOUCH_INTENSITY:Ljava/lang/String; = "vibrate_on_touch_intensity"

.field private static final TAG:Ljava/lang/String; = "OPVibrateIntensity"

.field private static final TOUCH_TAP_VIBRATE_DELAY:I = 0xa


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCunrrentType:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIncomingCallVibrateIntensityPreference:Landroidx/preference/Preference;

.field private mNoticeVibrateIntensityPreference:Landroidx/preference/Preference;

.field private mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

.field private mTempTouchTapIntensity:I

.field private mVibrateOnTouchIntensityPreference:Landroidx/preference/Preference;

.field private mVibrator:Landroid/os/Vibrator;

.field private sNoticeVibrateIntensity:[[J

.field private sRepeatVibrateIntensity:[[J

.field private sTouchVibrateIntensity:[[J

.field private sVibrateIntensity:[[J

.field private sVibratePatternrhythm:[[J


# direct methods
.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "incoming_call_vibrate_intensity"

    iput-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mCunrrentType:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v1, v0, [[J

    new-array v2, v0, [J

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0x9

    new-array v4, v2, [J

    fill-array-data v4, :array_1

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/16 v4, 0xd

    new-array v6, v4, [J

    fill-array-data v6, :array_2

    const/4 v7, 0x2

    aput-object v6, v1, v7

    const/16 v6, 0x11

    new-array v6, v6, [J

    fill-array-data v6, :array_3

    const/4 v8, 0x3

    aput-object v6, v1, v8

    new-array v4, v4, [J

    fill-array-data v4, :array_4

    const/4 v6, 0x4

    aput-object v4, v1, v6

    iput-object v1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sVibratePatternrhythm:[[J

    new-array v1, v8, [[J

    new-array v4, v0, [J

    fill-array-data v4, :array_5

    aput-object v4, v1, v3

    new-array v4, v0, [J

    fill-array-data v4, :array_6

    aput-object v4, v1, v5

    new-array v4, v0, [J

    fill-array-data v4, :array_7

    aput-object v4, v1, v7

    iput-object v1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sRepeatVibrateIntensity:[[J

    new-array v1, v8, [[J

    new-array v4, v6, [J

    fill-array-data v4, :array_8

    aput-object v4, v1, v3

    new-array v4, v6, [J

    fill-array-data v4, :array_9

    aput-object v4, v1, v5

    new-array v4, v6, [J

    fill-array-data v4, :array_a

    aput-object v4, v1, v7

    iput-object v1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sVibrateIntensity:[[J

    new-array v1, v8, [[J

    new-array v4, v2, [J

    fill-array-data v4, :array_b

    aput-object v4, v1, v3

    new-array v4, v2, [J

    fill-array-data v4, :array_c

    aput-object v4, v1, v5

    new-array v2, v2, [J

    fill-array-data v2, :array_d

    aput-object v2, v1, v7

    iput-object v1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sNoticeVibrateIntensity:[[J

    new-array v1, v8, [[J

    new-array v2, v0, [J

    fill-array-data v2, :array_e

    aput-object v2, v1, v3

    new-array v2, v0, [J

    fill-array-data v2, :array_f

    aput-object v2, v1, v5

    new-array v0, v0, [J

    fill-array-data v0, :array_10

    aput-object v0, v1, v7

    iput-object v1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sTouchVibrateIntensity:[[J

    new-instance v0, Lcom/oneplus/settings/OPVibrateIntensity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/OPVibrateIntensity$1;-><init>(Lcom/oneplus/settings/OPVibrateIntensity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mHandler:Landroid/os/Handler;

    return-void

    :array_0
    .array-data 8
        -0x2
        0x0
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
    .end array-data

    :array_5
    .array-data 8
        -0x1
        0x1f4
        0x3e8
        0x5dc
        0x3e8
    .end array-data

    :array_6
    .array-data 8
        -0x2
        0x1f4
        0x3e8
        0x5dc
        0x3e8
    .end array-data

    :array_7
    .array-data 8
        -0x3
        0x1f4
        0x3e8
        0x5dc
        0x3e8
    .end array-data

    :array_8
    .array-data 8
        -0x1
        0x1f4
        0x3e8
        0x1f4
    .end array-data

    :array_9
    .array-data 8
        -0x2
        0x1f4
        0x3e8
        0x1f4
    .end array-data

    :array_a
    .array-data 8
        -0x3
        0x1f4
        0x3e8
        0x1f4
    .end array-data

    :array_b
    .array-data 8
        -0x1
        0x0
        0x64
        0x96
        0x64
        0x3e8
        0x64
        0x96
        0x64
    .end array-data

    :array_c
    .array-data 8
        -0x2
        0x0
        0x64
        0x96
        0x64
        0x3e8
        0x64
        0x96
        0x64
    .end array-data

    :array_d
    .array-data 8
        -0x3
        0x0
        0x64
        0x96
        0x64
        0x3e8
        0x64
        0x96
        0x64
    .end array-data

    :array_e
    .array-data 8
        -0x1
        0x0
        0xa
        0x3e8
        0xa
    .end array-data

    :array_f
    .array-data 8
        -0x2
        0x0
        0xa
        0x3e8
        0xa
    .end array-data

    :array_10
    .array-data 8
        -0x3
        0x0
        0xa
        0x3e8
        0xa
    .end array-data
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPVibrateIntensity;)Lcom/oneplus/settings/ui/OPListDialog;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPVibrateIntensity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/OPVibrateIntensity;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mTempTouchTapIntensity:I

    return v0
.end method

.method private updateVibratePreferenceDescription(Ljava/lang/String;I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/OPVibrateIntensity;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030110

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v2, v1, p2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public OnDialogListCancelClick()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    :cond_0
    return-void
.end method

.method public OnDialogListConfirmClick(I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mCunrrentType:Ljava/lang/String;

    const-string v1, "incoming_call_vibrate_intensity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/OPVibrateIntensity;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v1, p1}, Lcom/oneplus/settings/OPVibrateIntensity;->updateVibratePreferenceDescription(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mCunrrentType:Ljava/lang/String;

    const-string v1, "notice_vibrate_intensity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/settings/OPVibrateIntensity;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v1, p1}, Lcom/oneplus/settings/OPVibrateIntensity;->updateVibratePreferenceDescription(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mCunrrentType:Ljava/lang/String;

    const-string v1, "vibrate_on_touch_intensity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/settings/OPVibrateIntensity;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v1, p1}, Lcom/oneplus/settings/OPVibrateIntensity;->updateVibratePreferenceDescription(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    :cond_3
    return-void
.end method

.method public OnDialogListItemClick(I)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnDialogListItemClick--index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPVibrateIntensity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mCunrrentType:Ljava/lang/String;

    const-string v2, "incoming_call_vibrate_intensity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/oneplus/settings/OPVibrateIntensity;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "incoming_call_vibrate_mode"

    invoke-static {v0, v3, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sVibratePatternrhythm:[[J

    array-length v3, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    if-le v0, v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    move v0, v3

    iget-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->cancel()V

    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sVibratePatternrhythm:[[J

    aget-object v3, v3, v0

    const-wide/16 v6, -0x1

    aput-wide v6, v3, v5

    goto :goto_1

    :cond_1
    if-ne p1, v4, :cond_2

    iget-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sVibratePatternrhythm:[[J

    aget-object v3, v3, v0

    const-wide/16 v6, -0x2

    aput-wide v6, v3, v5

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    iget-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sVibratePatternrhythm:[[J

    aget-object v3, v3, v0

    const-wide/16 v6, -0x3

    aput-wide v6, v3, v5

    :cond_3
    :goto_1
    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sVibratePatternrhythm:[[J

    aget-object v5, v4, v0

    array-length v5, v5

    if-ge v3, v5, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sVibratePatternrhythm ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sVibratePatternrhythm:[[J

    aget-object v5, v5, v0

    aget-wide v5, v5, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    aget-object v3, v4, v0

    invoke-virtual {v1, v3, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mCunrrentType:Ljava/lang/String;

    const-string v1, "notice_vibrate_intensity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sNoticeVibrateIntensity:[[J

    aget-object v1, v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mCunrrentType:Ljava/lang/String;

    const-string v1, "vibrate_on_touch_intensity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportZVibrationMotor()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/oneplus/settings/OPVibrateIntensity;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sTouchVibrateIntensity:[[J

    aget-object v1, v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_8
    :goto_3
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f1600c4

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPVibrateIntensity;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPVibrateIntensity;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/oneplus/settings/OPVibrateIntensity;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    const-string v0, "incoming_call_vibrate_intensity"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPVibrateIntensity;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mIncomingCallVibrateIntensityPreference:Landroidx/preference/Preference;

    const-string v1, "notice_vibrate_intensity"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPVibrateIntensity;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mNoticeVibrateIntensityPreference:Landroidx/preference/Preference;

    const-string v2, "vibrate_on_touch_intensity"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/OPVibrateIntensity;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrateOnTouchIntensityPreference:Landroidx/preference/Preference;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrateOnTouchIntensityPreference:Landroidx/preference/Preference;

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/OPVibrateIntensity;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/oneplus/settings/OPVibrateIntensity;->updateVibratePreferenceDescription(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPVibrateIntensity;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/oneplus/settings/OPVibrateIntensity;->updateVibratePreferenceDescription(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPVibrateIntensity;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mTempTouchTapIntensity:I

    invoke-direct {p0, v2, v0}, Lcom/oneplus/settings/OPVibrateIntensity;->updateVibratePreferenceDescription(Ljava/lang/String;I)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 6

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030111

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030110

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/settings/ui/OPListDialog;

    iget-object v4, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/oneplus/settings/ui/OPListDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

    iget-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-virtual {v3, p0}, Lcom/oneplus/settings/ui/OPListDialog;->setOnDialogListItemClickListener(Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;)V

    const-string v3, "incoming_call_vibrate_intensity"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-virtual {v4, v3}, Lcom/oneplus/settings/ui/OPListDialog;->setVibrateLevelKey(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mCunrrentType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v3, "notice_vibrate_intensity"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-virtual {v4, v3}, Lcom/oneplus/settings/ui/OPListDialog;->setVibrateLevelKey(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mCunrrentType:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v3, "vibrate_on_touch_intensity"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-virtual {v4, v3}, Lcom/oneplus/settings/ui/OPListDialog;->setVibrateLevelKey(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mCunrrentType:Ljava/lang/String;

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-virtual {v3}, Lcom/oneplus/settings/ui/OPListDialog;->show()V

    const/4 v3, 0x1

    return v3
.end method
