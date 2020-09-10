.class public Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "OPTcpTimestampsPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final OP_TCP_TIMESTAMPS_KEY:Ljava/lang/String; = "op_tcp_timestamps_randomization"

.field private static final OP_TCP_TIMESTAMPS_VALUE:Ljava/lang/String; = "op_tcp_timestamps_value"

.field private static final mIsH2Version:Z


# instance fields
.field private final mListSummaries:[Ljava/lang/String;

.field private final mListValues:[Ljava/lang/String;

.field private mTcpTimestampsFlag:Landroidx/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;->mIsH2Version:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;->mListValues:[Ljava/lang/String;

    iget-object v0, p0, Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;->mListSummaries:[Ljava/lang/String;

    return-void
.end method

.method private updateSummary(Landroidx/preference/Preference;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-boolean v1, Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;->mIsH2Version:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const-string v2, "op_tcp_timestamps_value"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;->mTcpTimestampsFlag:Landroidx/preference/ListPreference;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;->mListValues:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;->mTcpTimestampsFlag:Landroidx/preference/ListPreference;

    iget-object v2, p0, Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;->mListSummaries:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "op_tcp_timestamps_randomization"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    iput-object v0, p0, Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;->mTcpTimestampsFlag:Landroidx/preference/ListPreference;

    :cond_0
    return-void
.end method

.method public enablePreference(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;->mTcpTimestampsFlag:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "op_tcp_timestamps_randomization"

    return-object v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;->mTcpTimestampsFlag:Landroidx/preference/ListPreference;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;->writeTcpTimestampsFlagOption(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;->mTcpTimestampsFlag:Landroidx/preference/ListPreference;

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;->updateSummary(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public writeTcpTimestampsFlagOption(Ljava/lang/Object;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_tcp_timestamps_value"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;->mTcpTimestampsFlag:Landroidx/preference/ListPreference;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;->mListValues:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;->mTcpTimestampsFlag:Landroidx/preference/ListPreference;

    iget-object v2, p0, Lcom/oneplus/settings/development/OPTcpTimestampsPreferenceController;->mListSummaries:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
