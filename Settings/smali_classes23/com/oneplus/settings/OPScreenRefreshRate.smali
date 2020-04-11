.class public Lcom/oneplus/settings/OPScreenRefreshRate;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPScreenRefreshRate.java"

# interfaces
.implements Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field private static final KEY_OP_60HZ_MODE:Ljava/lang/String; = "op_60hz_mode"

.field private static final KEY_OP_90HZ_MODE:Ljava/lang/String; = "op_90hz_mode"

.field private static final KEY_OP_AUTO_MODE:Ljava/lang/String; = "op_auto_mode"

.field private static final ONEPLUS_SCREEN_REFRESH_RATE:Ljava/lang/String; = "oneplus_screen_refresh_rate"

.field private static final OP_60HZ_MODE_VALUE:I = 0x1

.field private static final OP_90HZ_MODE_VALUE:I = 0x0

.field private static final OP_AUTO_MODE_VALUE:I = 0x2

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private m60HzMode:Lcom/android/settings/ui/RadioButtonPreference;

.field private mAutoMode:Lcom/android/settings/ui/RadioButtonPreference;

.field private mContext:Landroid/content/Context;

.field private mEnterValue:I

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/OPScreenRefreshRate$2;

    invoke-direct {v0}, Lcom/oneplus/settings/OPScreenRefreshRate$2;-><init>()V

    sput-object v0, Lcom/oneplus/settings/OPScreenRefreshRate;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPScreenRefreshRate;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mAutoMode:Lcom/android/settings/ui/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPScreenRefreshRate;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->m60HzMode:Lcom/android/settings/ui/RadioButtonPreference;

    return-object v0
.end method

.method private delayRefreshUI()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mAutoMode:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->m60HzMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/settings/OPScreenRefreshRate$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/OPScreenRefreshRate$1;-><init>(Lcom/oneplus/settings/OPScreenRefreshRate;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f1600b7

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPScreenRefreshRate;->addPreferencesFromResource(I)V

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iput-object v0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mContext:Landroid/content/Context;

    const-string v0, "op_auto_mode"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPScreenRefreshRate;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mAutoMode:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v0, "op_60hz_mode"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPScreenRefreshRate;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->m60HzMode:Lcom/android/settings/ui/RadioButtonPreference;

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mAutoMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->m60HzMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_screen_refresh_rate"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mEnterValue:I

    return-void
.end method

.method public onDestroy()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "oneplus_screen_refresh_rate"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget v2, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mEnterValue:I

    if-eq v0, v2, :cond_1

    const-string v2, "status"

    const-string v3, "refresh rate"

    if-ne v0, v1, :cond_0

    const-string v1, "0"

    invoke-static {v3, v2, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v1, "1"

    invoke-static {v3, v2, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/ui/RadioButtonPreference;)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mAutoMode:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v1, "oneplus_screen_refresh_rate"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {v0, v3}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->m60HzMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->m60HzMode:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v4, :cond_1

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->m60HzMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenRefreshRate;->delayRefreshUI()V

    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "oneplus_screen_refresh_rate"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->mAutoMode:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/OPScreenRefreshRate;->m60HzMode:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne v0, v4, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v1, v3}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    return-void
.end method
