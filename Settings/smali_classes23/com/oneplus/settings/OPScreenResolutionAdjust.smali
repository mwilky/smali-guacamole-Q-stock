.class public Lcom/oneplus/settings/OPScreenResolutionAdjust;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPScreenResolutionAdjust.java"

# interfaces
.implements Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field private static final DEFAULT_DENSITY_INDEX:I = 0x1

.field private static final DEFAULT_MODE:I = 0x2

.field private static final DPI_VALUES_1080P:[I

.field public static final KEY_OP_1080P_MODE:Ljava/lang/String; = "op_1080p_mode"

.field public static final KEY_OP_INTELLIGENT_SWITCH_RESOLUTION_MODE:Ljava/lang/String; = "op_intelligent_switch_resolution_mode"

.field public static final KEY_OP_OTHER_RESOLUTION_MODE:Ljava/lang/String; = "op_other_resolution_mode"

.field public static final ONEPLUS_SCREEN_RESOLUTION_ADJUST:Ljava/lang/String; = "oneplus_screen_resolution_adjust"

.field public static final OP_1080P_MODE:I = 0x1

.field public static final OP_INTELLIGENT_SWITCH_RESOLUTION_MODE:I = 0x2

.field public static final OP_OTHER_RESOLUTION_MODE:I = 0x0

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static final SURFACE_COMPOSER_INTERFACE_KEY:Ljava/lang/String; = "android.ui.ISurfaceComposer"

.field private static final SURFACE_FLINGER_DISABLE_OVERLAYS_CODE:I = 0x3f0

.field private static final SURFACE_FLINGER_SERVICE_KEY:Ljava/lang/String; = "SurfaceFlinger"


# instance fields
.field private m1080PMode:Lcom/android/settings/ui/RadioButtonPreference;

.field private mAm:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mDpiValuesOther:[I

.field private mEnterValue:I

.field private mHandler:Landroid/os/Handler;

.field private mIntelligentSwitchResolutionMode:Lcom/android/settings/ui/RadioButtonPreference;

.field private mOtherResolutionMode:Lcom/android/settings/ui/RadioButtonPreference;

.field private mWarnDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->DPI_VALUES_1080P:[I

    new-instance v0, Lcom/oneplus/settings/OPScreenResolutionAdjust$4;

    invoke-direct {v0}, Lcom/oneplus/settings/OPScreenResolutionAdjust$4;-><init>()V

    sput-object v0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void

    :array_0
    .array-data 4
        0x17c
        0x1a4
        0x1e0
        0x1f4
        0x21c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPScreenResolutionAdjust;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->changeScreenResolution(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPScreenResolutionAdjust;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode:Lcom/android/settings/ui/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/OPScreenResolutionAdjust;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode:Lcom/android/settings/ui/RadioButtonPreference;

    return-object v0
.end method

.method private changeScreenResolution(I)V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "oneplus_screen_resolution_adjust"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v1, :cond_2

    iget-object v5, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mIntelligentSwitchResolutionMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v5, v3}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v5, v4}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v5, v4}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    if-ne v0, v3, :cond_0

    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->openSurfaceComposerInterface()V

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->is1080pMode()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mDpiValuesOther:[I

    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->getCurrent1080pDpiIndex()I

    move-result v5

    aget v3, v3, v5

    invoke-static {v4, v3}, Lcom/android/settingslib/display/DisplayDensityUtils;->setForcedDisplayDensity(II)V

    :cond_1
    iget-object v3, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    if-nez p1, :cond_5

    iget-object v1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mIntelligentSwitchResolutionMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v4}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v4}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    if-ne v0, v3, :cond_3

    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->openSurfaceComposerInterface()V

    :cond_3
    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->is1080pMode()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mDpiValuesOther:[I

    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->getCurrent1080pDpiIndex()I

    move-result v3

    aget v1, v1, v3

    invoke-static {v4, v1}, Lcom/android/settingslib/display/DisplayDensityUtils;->setForcedDisplayDensity(II)V

    :cond_4
    iget-object v1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_5
    if-ne p1, v3, :cond_7

    iget-object v1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mIntelligentSwitchResolutionMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v4}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v4}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->openSurfaceComposerInterface()V

    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->is1080pMode()Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/oneplus/settings/OPScreenResolutionAdjust;->DPI_VALUES_1080P:[I

    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->getCurrentOtherDpiIndex()I

    move-result v5

    aget v1, v1, v5

    invoke-static {v4, v1}, Lcom/android/settingslib/display/DisplayDensityUtils;->setForcedDisplayDensity(II)V

    :cond_6
    iget-object v1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_7
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mAm:Landroid/app/ActivityManager;

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPApplicationUtils;->killProcess(Landroid/app/ActivityManager;)V

    return-void
.end method

.method private delayRefreshUI()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/settings/OPScreenResolutionAdjust$3;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust$3;-><init>(Lcom/oneplus/settings/OPScreenResolutionAdjust;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private getCurrent1080pDpiIndex()I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_density_forced"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/oneplus/settings/OPScreenResolutionAdjust;->DPI_VALUES_1080P:[I

    array-length v4, v3

    if-ge v2, v4, :cond_2

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private getCurrentOtherDpiIndex()I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_density_forced"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mDpiValuesOther:[I

    array-length v4, v3

    if-ge v2, v4, :cond_2

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private getIInputMethodManager()Lcom/android/internal/view/IInputMethodManager;
    .locals 2

    const-string v0, "input_method"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v1

    return-object v1
.end method

.method private is1080pMode()Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_screen_resolution_adjust"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isIntelligentSwitchMode()Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "oneplus_screen_resolution_adjust"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isOtherMode()Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_screen_resolution_adjust"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private killRunningProcess()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/oneplus/settings/highpowerapp/PackageUtils;->isSystemApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    const/16 v4, 0x2710

    if-gt v3, v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v4, "com.android.systemui:ui"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPApplicationUtils;->isOnePlusO2UninstallationApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPApplicationUtils;->isOnePlusH2UninstallationApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "killRunningProcess--processName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OPScreenResolutionAdjust"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mAm:Landroid/app/ActivityManager;

    iget v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    const-string v5, "change screen resolution"

    invoke-virtual {v3, v4, v5}, Landroid/app/ActivityManager;->killUid(ILjava/lang/String;)V

    :cond_6
    goto :goto_0

    :cond_7
    return-void
.end method

.method private killSomeProcess()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mAm:Landroid/app/ActivityManager;

    const-string v1, "com.android.dialer"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mAm:Landroid/app/ActivityManager;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mAm:Landroid/app/ActivityManager;

    const-string v1, "com.oneplus.mms"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    return-void
.end method

.method private openSurfaceComposerInterface()V
    .locals 5

    nop

    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v2, 0x3f0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_0
    :goto_0
    return-void
.end method

.method private removeRunningTask()V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const v2, 0x7fffffff

    const/4 v3, 0x2

    const/4 v4, -0x2

    invoke-interface {v1, v2, v3, v4}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    if-nez v1, :cond_2

    if-eqz v3, :cond_1

    iget-object v4, v3, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.settings"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    iget v5, v3, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->removeTask(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to remove task="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OPScreenResolutionAdjust"

    invoke-static {v6, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_3
    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public killSystemInputMethods()V
    .locals 10

    const-string v0, "OPScreenResolutionAdjust"

    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->getIInputMethodManager()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x2

    :try_start_0
    invoke-interface {v1, v3}, Lcom/android/internal/view/IInputMethodManager;->getInputMethodList(I)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    nop

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SystemInputMethods--processName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " uid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mAm:Landroid/app/ActivityManager;

    iget v8, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v9, "change screen resolution"

    invoke-virtual {v7, v8, v9}, Landroid/app/ActivityManager;->killUid(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception v3

    const-string v4, "Could not communicate with IInputMethodManager"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f1600b8

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->addPreferencesFromResource(I)V

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iput-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mAm:Landroid/app/ActivityManager;

    const-string v0, "op_intelligent_switch_resolution_mode"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mIntelligentSwitchResolutionMode:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v0, "op_other_resolution_mode"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v0, "op_1080p_mode"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode:Lcom/android/settings/ui/RadioButtonPreference;

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mIntelligentSwitchResolutionMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mDpiValuesOther:[I

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_screen_resolution_adjust"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mEnterValue:I

    return-void
.end method

.method public onDestroy()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "oneplus_screen_resolution_adjust"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget v2, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mEnterValue:I

    if-eq v2, v0, :cond_2

    const-string v2, "status"

    const-string v3, "resolution"

    if-ne v0, v1, :cond_0

    const-string v1, "1"

    invoke-static {v3, v2, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const-string v1, "2"

    invoke-static {v3, v2, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const-string v1, "3"

    invoke-static {v3, v2, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onMultiWindowModeChanged(Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mIntelligentSwitchResolutionMode:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/ui/RadioButtonPreference;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mIntelligentSwitchResolutionMode:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->isIntelligentSwitchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->showWarnigDialog(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->isOtherMode()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->showWarnigDialog(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v0, :cond_5

    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->is1080pMode()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->showWarnigDialog(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isInMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mIntelligentSwitchResolutionMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    const-string v3, "oneplus_screen_resolution_adjust"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mIntelligentSwitchResolutionMode:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v4, 0x1

    if-ne v0, v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-virtual {v3, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode:Lcom/android/settings/ui/RadioButtonPreference;

    if-nez v0, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne v0, v4, :cond_3

    move v1, v4

    :cond_3
    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    return-void
.end method

.method public showWarnigDialog(I)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120f60

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/OPScreenResolutionAdjust$2;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/settings/OPScreenResolutionAdjust$2;-><init>(Lcom/oneplus/settings/OPScreenResolutionAdjust;I)V

    const v2, 0x7f120f5f

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/OPScreenResolutionAdjust$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust$1;-><init>(Lcom/oneplus/settings/OPScreenResolutionAdjust;)V

    const v2, 0x7f1203d8

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mWarnDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mWarnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
