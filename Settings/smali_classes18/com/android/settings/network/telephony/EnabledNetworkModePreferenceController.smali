.class public Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;
.source "EnabledNetworkModePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mIsGlobalCdma:Z

.field mShow4GForLTE:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    return-void
.end method

.method private getPreferredNetworkMode()I
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preferred_network_mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private updatePreferenceEntries(Landroidx/preference/ListPreference;)V
    .locals 9

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubId:I

    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    const v2, 0x7f03006e

    const v3, 0x7f030069

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lte_service_forced"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v6

    if-ne v6, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v7

    :goto_0
    iget-object v6, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "preferred_network_mode"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v4, :cond_a

    if-nez v5, :cond_1

    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setEntries(I)V

    invoke-virtual {p1, v2}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_3

    :cond_1
    packed-switch v6, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setEntries(I)V

    invoke-virtual {p1, v2}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_3

    :pswitch_1
    const v2, 0x7f03006c

    invoke-virtual {p1, v2}, Landroidx/preference/ListPreference;->setEntries(I)V

    const v2, 0x7f03006d

    invoke-virtual {p1, v2}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_3

    :pswitch_2
    const v2, 0x7f03006a

    invoke-virtual {p1, v2}, Landroidx/preference/ListPreference;->setEntries(I)V

    const v2, 0x7f03006b

    invoke-virtual {p1, v2}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_3

    :cond_2
    if-ne v0, v4, :cond_a

    iget-object v4, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubId:I

    invoke-static {v4, v5}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isTdscdmaSupported(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_3

    const v2, 0x7f030077

    invoke-virtual {p1, v2}, Landroidx/preference/ListPreference;->setEntries(I)V

    const v2, 0x7f030078

    invoke-virtual {p1, v2}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_4

    :cond_3
    const-string v4, "lte_enabled_bool"

    const-string v5, "prefer_2g_bool"

    if-eqz v1, :cond_4

    invoke-virtual {v1, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v1, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const v2, 0x7f030072

    invoke-virtual {p1, v2}, Landroidx/preference/ListPreference;->setEntries(I)V

    const v2, 0x7f030073

    invoke-virtual {p1, v2}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_4

    :cond_4
    if-eqz v1, :cond_6

    invoke-virtual {v1, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-boolean v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mShow4GForLTE:Z

    if-eqz v2, :cond_5

    const v2, 0x7f030070

    goto :goto_1

    :cond_5
    const v2, 0x7f030071

    :goto_1
    nop

    invoke-virtual {p1, v2}, Landroidx/preference/ListPreference;->setEntries(I)V

    const v3, 0x7f030074

    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_4

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const v2, 0x7f030075

    invoke-virtual {p1, v2}, Landroidx/preference/ListPreference;->setEntries(I)V

    const v2, 0x7f030076

    invoke-virtual {p1, v2}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_4

    :cond_7
    iget-boolean v4, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mIsGlobalCdma:Z

    if-eqz v4, :cond_8

    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setEntries(I)V

    invoke-virtual {p1, v2}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_4

    :cond_8
    iget-boolean v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mShow4GForLTE:Z

    if-eqz v2, :cond_9

    const v2, 0x7f030068

    goto :goto_2

    :cond_9
    const v2, 0x7f03006f

    :goto_2
    nop

    invoke-virtual {p1, v2}, Landroidx/preference/ListPreference;->setEntries(I)V

    const v3, 0x7f030079

    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_4

    :cond_a
    :goto_3
    nop

    :goto_4
    iget-object v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubId:I

    invoke-static {v2, v3}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_b

    const v2, 0x7f0300e7

    invoke-virtual {p1, v2}, Landroidx/preference/ListPreference;->setEntries(I)V

    const v2, 0x7f0300e9

    invoke-virtual {p1, v2}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    :cond_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private updatePreferenceValueAndSummary(Landroidx/preference/ListPreference;I)V
    .locals 7

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const v0, 0x7f120aef

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f120b01

    const v4, 0x7f120b00

    const/16 v5, 0xa

    const v6, 0x7f120aee

    packed-switch p2, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f120aaa

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :pswitch_0
    const/16 v0, 0x15

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroidx/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_3

    :pswitch_1
    const/16 v0, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroidx/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_3

    :pswitch_2
    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroidx/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_3

    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubId:I

    invoke-static {v1, v2}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isTdscdmaSupported(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x16

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_3

    :cond_0
    nop

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mIsGlobalCdma:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubId:I

    invoke-static {v1, v2}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mShow4GForLTE:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_3

    :cond_3
    :goto_1
    invoke-virtual {p1, v4}, Landroidx/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_3

    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubId:I

    invoke-static {v1, v2}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_4

    const v0, 0x7f1211e0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_3

    :cond_4
    :pswitch_5
    iget-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mIsGlobalCdma:Z

    if-nez v1, :cond_6

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    nop

    iget-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mShow4GForLTE:Z

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_2
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_3

    :cond_6
    nop

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroidx/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_3

    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubId:I

    invoke-static {v0, v1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f1211df

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(I)V

    goto :goto_3

    :cond_7
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setSummary(I)V

    goto :goto_3

    :pswitch_7
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const v0, 0x7f120aec

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(I)V

    goto :goto_3

    :pswitch_8
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroidx/preference/ListPreference;->setSummary(I)V

    goto :goto_3

    :pswitch_9
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mIsGlobalCdma:Z

    if-nez v0, :cond_8

    nop

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const v0, 0x7f120aed

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(I)V

    goto :goto_3

    :cond_8
    nop

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroidx/preference/ListPreference;->setSummary(I)V

    goto :goto_3

    :pswitch_a
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mIsGlobalCdma:Z

    if-nez v0, :cond_9

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroidx/preference/ListPreference;->setSummary(I)V

    goto :goto_3

    :cond_9
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroidx/preference/ListPreference;->setSummary(I)V

    nop

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getAvailabilityStatus(I)I
    .locals 4

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const-string v2, "hide_carrier_network_settings_bool"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const-string v2, "hide_preferred_network_type_bool"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const-string v2, "world_phone_bool"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_5

    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    const/4 v3, 0x2

    :goto_1
    return v3
.end method

.method public init(I)V
    .locals 5

    iput p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubId:I

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubId:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    const-string v4, "show_cdma_choices_bool"

    invoke-virtual {v0, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iput-boolean v3, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mIsGlobalCdma:Z

    if-eqz v0, :cond_2

    const-string v2, "show_4g_for_lte_data_icon_bool"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_2

    :cond_2
    nop

    :goto_2
    iput-boolean v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mShow4GForLTE:Z

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubId:I

    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->setPreferredNetworkType(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preferred_network_mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object v1, p1

    check-cast v1, Landroidx/preference/ListPreference;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->updatePreferenceValueAndSummary(Landroidx/preference/ListPreference;I)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->updateState(Landroidx/preference/Preference;)V

    move-object v0, p1

    check-cast v0, Landroidx/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->getPreferredNetworkMode()I

    move-result v1

    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->updatePreferenceEntries(Landroidx/preference/ListPreference;)V

    invoke-direct {p0, v0, v1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->updatePreferenceValueAndSummary(Landroidx/preference/ListPreference;I)V

    return-void
.end method
