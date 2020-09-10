.class public Lcom/android/settings/network/ApnEditor;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ApnEditor.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/ApnEditor$ApnData;,
        Lcom/android/settings/network/ApnEditor$ErrorDialog;
    }
.end annotation


# static fields
.field private static final APN_DEFALUT_VALUES_STRING_ARRAY:Ljava/lang/String; = "apn_default_values_strings_array"

.field static final APN_INDEX:I = 0x2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final AUTH_TYPE_INDEX:I = 0xe

.field private static final BEARER_BITMASK_INDEX:I = 0x13

.field private static final BEARER_INDEX:I = 0x12

.field static final CARRIER_ENABLED_INDEX:I = 0x11
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final EDITED_INDEX:I = 0x17

.field private static final ID_INDEX:I = 0x0

.field private static final KEY_AUTH_TYPE:Ljava/lang/String; = "auth_type"

.field private static final KEY_BEARER_MULTI:Ljava/lang/String; = "bearer_multi"

.field private static final KEY_CARRIER_ENABLED:Ljava/lang/String; = "carrier_enabled"

.field private static final KEY_MVNO_TYPE:Ljava/lang/String; = "mvno_type"

.field private static final KEY_PASSWORD:Ljava/lang/String; = "apn_password"

.field private static final KEY_PROTOCOL:Ljava/lang/String; = "apn_protocol"

.field private static final KEY_ROAMING_PROTOCOL:Ljava/lang/String; = "apn_roaming_protocol"

.field static final MCC_INDEX:I = 0x9
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final MENU_CANCEL:I = 0x3

.field private static final MENU_DELETE:I = 0x1

.field private static final MENU_SAVE:I = 0x2

.field private static final MMSC_INDEX:I = 0x8

.field private static final MMSPORT_INDEX:I = 0xd

.field private static final MMSPROXY_INDEX:I = 0xc

.field static final MNC_INDEX:I = 0xa
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final MVNO_MATCH_DATA_INDEX:I = 0x16

.field private static final MVNO_TYPE_INDEX:I = 0x15

.field static final NAME_INDEX:I = 0x1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final PASSWORD_INDEX:I = 0x7

.field private static final PERSISTENT_INDEX:I = 0x19

.field private static final PORT_INDEX:I = 0x4

.field private static final PROTOCOL_INDEX:I = 0x10

.field private static final PROXY_INDEX:I = 0x3

.field private static final READONLY_INDEX:I = 0x1a

.field private static final ROAMING_PROTOCOL_INDEX:I = 0x14

.field private static final SERVER_INDEX:I = 0x6

.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_INDEX:I = 0xf

.field private static final USER_EDITABLE_INDEX:I = 0x18

.field private static final USER_INDEX:I = 0x5

.field private static final VDBG:Z = false

.field static sNotSet:Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final sProjection:[Ljava/lang/String;

.field private static final sUIConfigurableItems:[Ljava/lang/String;


# instance fields
.field private ACTION_FROM:Ljava/lang/String;

.field private ACTION_IS_DATA_CHANGED:Ljava/lang/String;

.field mApn:Landroidx/preference/EditTextPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mApnData:Lcom/android/settings/network/ApnEditor$ApnData;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mApnType:Landroidx/preference/EditTextPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mAuthType:Landroidx/preference/ListPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mBearerInitialVal:I

.field mBearerMulti:Landroidx/preference/MultiSelectListPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mCarrierEnabled:Landroidx/preference/SwitchPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mCarrierUri:Landroid/net/Uri;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field private mDeletableApn:Z

.field private mIsFromHM:Z

.field private mIsPreferenceChanged:Z

.field mMcc:Landroidx/preference/EditTextPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mMmsPort:Landroidx/preference/EditTextPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mMmsProxy:Landroidx/preference/EditTextPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mMmsc:Landroidx/preference/EditTextPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mMnc:Landroidx/preference/EditTextPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mMvnoMatchData:Landroidx/preference/EditTextPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mMvnoMatchDataStr:Ljava/lang/String;

.field mMvnoType:Landroidx/preference/ListPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mMvnoTypeStr:Ljava/lang/String;

.field mName:Landroidx/preference/EditTextPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mNewApn:Z

.field mPassword:Landroidx/preference/EditTextPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mPort:Landroidx/preference/EditTextPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mProtocol:Landroidx/preference/ListPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mProxy:Landroidx/preference/EditTextPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mReadOnlyApn:Z

.field private mReadOnlyApnFields:[Ljava/lang/String;

.field private mReadOnlyApnTypes:[Ljava/lang/String;

.field mRoamingProtocol:Landroidx/preference/ListPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mServer:Landroidx/preference/EditTextPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mSubId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mUser:Landroidx/preference/EditTextPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 28

    const-class v0, Lcom/android/settings/network/ApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "name"

    const-string v3, "apn"

    const-string v4, "proxy"

    const-string v5, "port"

    const-string v6, "user"

    const-string v7, "server"

    const-string v8, "password"

    const-string v9, "mmsc"

    const-string v10, "mcc"

    const-string v11, "mnc"

    const-string v12, "numeric"

    const-string v13, "mmsproxy"

    const-string v14, "mmsport"

    const-string v15, "authtype"

    const-string v16, "type"

    const-string v17, "protocol"

    const-string v18, "carrier_enabled"

    const-string v19, "bearer"

    const-string v20, "bearer_bitmask"

    const-string v21, "roaming_protocol"

    const-string v22, "mvno_type"

    const-string v23, "mvno_match_data"

    const-string v24, "edited"

    const-string v25, "user_editable"

    const-string v26, "persistent"

    const-string v27, "read_only"

    filled-new-array/range {v1 .. v27}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnEditor;->sProjection:[Ljava/lang/String;

    const-string v1, "name"

    const-string v2, "apn"

    const-string v3, "proxy"

    const-string v4, "port"

    const-string v5, "user"

    const-string v6, "server"

    const-string v7, "password"

    const-string v8, "mmsc"

    const-string v9, "mmsproxy"

    const-string v10, "mmsport"

    const-string v11, "authtype"

    const-string v12, "type"

    const-string v13, "protocol"

    const-string v14, "carrier_enabled"

    const-string v15, "bearer"

    const-string v16, "bearer_bitmask"

    const-string v17, "roaming_protocol"

    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnEditor;->sUIConfigurableItems:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    iput-boolean v0, p0, Lcom/android/settings/network/ApnEditor;->mIsFromHM:Z

    iput-boolean v0, p0, Lcom/android/settings/network/ApnEditor;->mIsPreferenceChanged:Z

    const-string v0, "isFromHM"

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->ACTION_FROM:Ljava/lang/String;

    const-string v0, "isDataChanged"

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->ACTION_IS_DATA_CHANGED:Ljava/lang/String;

    return-void
.end method

.method private apnEditorFinish()V
    .locals 3

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/network/ApnEditor;->mIsFromHM:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->ACTION_IS_DATA_CHANGED:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/settings/network/ApnEditor;->mIsPreferenceChanged:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/network/ApnEditor;->setResult(ILandroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    return-void
.end method

.method private apnTypesMatch([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/android/settings/network/ApnEditor;->hasAllApns([Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v1, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apnTypesMatch: true because match found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v4, "apnTypesMatch: false"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    :goto_1
    return v2
.end method

.method private bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v5, v4}, Landroidx/preference/MultiSelectListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    if-eqz v2, :cond_0

    :try_start_0
    aget-object v6, v0, v5

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v0, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v6

    :goto_2
    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    return-object v3

    :cond_2
    const/4 v4, 0x0

    return-object v4
.end method

.method private checkApnType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    const-string v0, "default"

    return-object v0
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method private deleteApn()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v0}, Lcom/android/settings/network/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v1}, Lcom/android/settings/network/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v0, Lcom/android/settings/network/ApnEditor$ApnData;

    sget-object v1, Lcom/android/settings/network/ApnEditor;->sProjection:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/android/settings/network/ApnEditor$ApnData;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    :cond_0
    return-void
.end method

.method private disableAllFields()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroidx/preference/EditTextPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mProxy:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mPort:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mUser:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mServer:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsPort:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/MultiSelectListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    return-void
.end method

.method private disableFields([Ljava/lang/String;)V
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->getPreferenceFromFieldName(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fieldValidate(Ljava/lang/String;)Z
    .locals 6

    sget-object v0, Lcom/android/settings/network/ApnEditor;->sUIConfigurableItems:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not configurable"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private findIndexOfKey(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/settings/network/ApnEditor;->sProjection:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method static formatInteger(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0}, Lcom/android/settings/network/ApnEditor;->getCorrectDigitsFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    return-object p0
.end method

.method static getCorrectDigitsFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "%02d"

    return-object v0

    :cond_0
    const-string v0, "%03d"

    return-object v0
.end method

.method private getPreferenceFromFieldName(Ljava/lang/String;)Landroidx/preference/Preference;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v0, "authtype"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "password"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "mmsport"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "proxy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "port"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "mmsc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "mnc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "mcc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "apn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "mvno_match_data"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto :goto_1

    :sswitch_d
    const-string v0, "server"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_e
    const-string v0, "protocol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_f
    const-string v0, "roaming_protocol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_10
    const-string v0, "bearer_bitmask"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_1

    :sswitch_11
    const-string v0, "bearer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_1

    :sswitch_12
    const-string v0, "carrier_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_1

    :sswitch_13
    const-string v0, "mmsproxy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_14
    const-string v0, "mvno_type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    return-object v0

    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    return-object v0

    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    return-object v0

    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    return-object v0

    :pswitch_7
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroidx/preference/EditTextPreference;

    return-object v0

    :pswitch_8
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroidx/preference/EditTextPreference;

    return-object v0

    :pswitch_9
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroidx/preference/EditTextPreference;

    return-object v0

    :pswitch_a
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsc:Landroidx/preference/EditTextPreference;

    return-object v0

    :pswitch_b
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsPort:Landroidx/preference/EditTextPreference;

    return-object v0

    :pswitch_c
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Landroidx/preference/EditTextPreference;

    return-object v0

    :pswitch_d
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Landroidx/preference/EditTextPreference;

    return-object v0

    :pswitch_e
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mServer:Landroidx/preference/EditTextPreference;

    return-object v0

    :pswitch_f
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mUser:Landroidx/preference/EditTextPreference;

    return-object v0

    :pswitch_10
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mPort:Landroidx/preference/EditTextPreference;

    return-object v0

    :pswitch_11
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mProxy:Landroidx/preference/EditTextPreference;

    return-object v0

    :pswitch_12
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroidx/preference/EditTextPreference;

    return-object v0

    :pswitch_13
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroidx/preference/EditTextPreference;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7f4962d1 -> :sswitch_14
        -0x747b9085 -> :sswitch_13
        -0x61c86706 -> :sswitch_12
        -0x5307fc9f -> :sswitch_11
        -0x49581165 -> :sswitch_10
        -0x3df71002 -> :sswitch_f
        -0x3af57168 -> :sswitch_e
        -0x35fdd0bd -> :sswitch_d
        -0x1f00dbe7 -> :sswitch_c
        0x17a1f -> :sswitch_b
        0x1a58d -> :sswitch_a
        0x1a6e2 -> :sswitch_9
        0x3333f0 -> :sswitch_8
        0x337a8b -> :sswitch_7
        0x349881 -> :sswitch_6
        0x368f3a -> :sswitch_5
        0x36ebcb -> :sswitch_4
        0x65fca6e -> :sswitch_3
        0x46909dd4 -> :sswitch_2
        0x4889ba9b -> :sswitch_1
        0x556d58e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getUserEnteredApnType()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants;->APN_TYPES:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "ia"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "emergency"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "mcx"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const-string v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUserEnteredApnType: changed apn type to editable apn types: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v0
.end method

.method static hasAllApns([Ljava/lang/String;)Z
    .locals 8

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v2, "*"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    sget-object v1, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v2, "hasAllApns: true because apnList.contains(PhoneConstants.APN_TYPE_ALL)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants;->APN_TYPES:[Ljava/lang/String;

    array-length v4, v2

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v2, v5

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    return v1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v2, "hasAllApns: true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private isSprintMccMnc(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v1, "310120"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "311870"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "311490"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "312530"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "310000"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    return v0
.end method

.method private mvnoDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    invoke-virtual {v1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f030099

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApn:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v7, "mvno_match_data"

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v6

    :goto_1
    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    if-nez v4, :cond_3

    if-eqz v0, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {v7, v5}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    if-eqz p1, :cond_8

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    aget-object v5, v3, v0

    const-string v6, "SPN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    aget-object v5, v3, v0

    const-string v6, "IMSI"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v6, p0, Lcom/android/settings/network/ApnEditor;->mSubId:I

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-direct {p0, v5}, Lcom/android/settings/network/ApnEditor;->isSprintMccMnc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v5

    :cond_5
    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    aget-object v5, v3, v0

    const-string v6, "GID"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    aget-object v5, v3, v0

    const-string v6, "ICCID"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    if-eqz v5, :cond_8

    sget-object v5, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMvnoMatchDataStr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_8
    :goto_2
    :try_start_0
    aget-object v2, v3, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v5

    return-object v2
.end method

.method private protocolDescription(Ljava/lang/String;Landroidx/preference/ListPreference;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p2, p1}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    :try_start_0
    aget-object v1, v2, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v3

    return-object v1
.end method

.method private setAppData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settings/network/ApnEditor;->findIndexOfKey(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v1, v0, p2}, Lcom/android/settings/network/ApnEditor$ApnData;->setObject(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private setDefaultData()V
    .locals 7

    nop

    const-string v0, "carrier_config"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/settings/network/ApnEditor;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "apn_default_values_strings_array"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/settings/network/ApnEditor;->fieldValidate(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2, v5}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/settings/network/ApnEditor;->setAppData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    const/16 v2, 0x2a

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    :cond_2
    :goto_1
    sget-object v0, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

    return-object v0
.end method

.method private updateApnDataToDatabase(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 1

    new-instance v0, Lcom/android/settings/network/-$$Lambda$ApnEditor$1vSLgWOnd4pMuFU2qFaSz0HXNw8;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/network/-$$Lambda$ApnEditor$1vSLgWOnd4pMuFU2qFaSz0HXNw8;-><init>(Lcom/android/settings/network/ApnEditor;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method fillUI(Z)V
    .locals 9
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz p1, :cond_a

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroidx/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v4, v2}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroidx/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mProxy:Landroidx/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mPort:Landroidx/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mUser:Landroidx/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mServer:Landroidx/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/4 v7, 0x6

    invoke-virtual {v4, v7}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Landroidx/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/4 v7, 0x7

    invoke-virtual {v4, v7}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Landroidx/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v7, 0xc

    invoke-virtual {v4, v7}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mMmsPort:Landroidx/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v7, 0xd

    invoke-virtual {v4, v7}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mMmsc:Landroidx/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroidx/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v7, 0x9

    invoke-virtual {v4, v7}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroidx/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v7, 0xa

    invoke-virtual {v4, v7}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroidx/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v7, 0xf

    invoke-virtual {v4, v7}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/settings/network/ApnEditor;->mSubId:I

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->isSprintMccMnc(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_1

    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v8, v4}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v8, v7}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/settings/network/ApnEditor;->mCurMnc:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/settings/network/ApnEditor;->mCurMcc:Ljava/lang/String;

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_2

    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "460"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroidx/preference/EditTextPreference;

    const-string v5, "default,supl"

    invoke-virtual {v4, v5}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroidx/preference/EditTextPreference;

    const-string v5, "default"

    invoke-virtual {v4, v5}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v4, 0xe

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v5, :cond_4

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :goto_1
    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v6, 0x14

    invoke-virtual {v5, v6}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v6, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v2, :cond_5

    move v5, v2

    goto :goto_2

    :cond_5
    move v5, v0

    :goto_2
    invoke-virtual {v4, v5}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v5, 0x12

    invoke-virtual {v4, v5, v1}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v6, 0x13

    invoke-virtual {v5, v6, v1}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v5, ""

    if-nez v1, :cond_6

    iget v6, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    if-nez v6, :cond_8

    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    const/4 v6, 0x1

    :goto_3
    if-eqz v1, :cond_8

    and-int/lit8 v7, v1, 0x1

    if-ne v7, v2, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_7
    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    iget v6, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    if-eqz v6, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v5, v4}, Landroidx/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v7, 0x15

    invoke-virtual {v6, v7}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    invoke-virtual {v5, v0}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v7, 0x16

    invoke-virtual {v6, v7}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v6, v2}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->getLocalizedName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroidx/preference/EditTextPreference;

    invoke-virtual {v6, v5}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_a
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroidx/preference/EditTextPreference;

    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroidx/preference/EditTextPreference;

    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mProxy:Landroidx/preference/EditTextPreference;

    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mPort:Landroidx/preference/EditTextPreference;

    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mUser:Landroidx/preference/EditTextPreference;

    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mServer:Landroidx/preference/EditTextPreference;

    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Landroidx/preference/EditTextPreference;

    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Landroidx/preference/EditTextPreference;

    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mMmsPort:Landroidx/preference/EditTextPreference;

    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mMmsc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/network/ApnEditor;->formatInteger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/network/ApnEditor;->formatInteger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroidx/preference/EditTextPreference;

    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    invoke-virtual {v1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    aget-object v6, v4, v3

    invoke-virtual {v5, v6}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_b
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    sget-object v4, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_5
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    invoke-virtual {v3}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    invoke-direct {p0, v4, v5}, Lcom/android/settings/network/ApnEditor;->protocolDescription(Ljava/lang/String;Landroidx/preference/ListPreference;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    invoke-virtual {v3}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    invoke-direct {p0, v4, v5}, Lcom/android/settings/network/ApnEditor;->protocolDescription(Ljava/lang/String;Landroidx/preference/ListPreference;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v3}, Landroidx/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/network/ApnEditor;->bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    invoke-virtual {v3}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/network/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    invoke-virtual {v3}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_6

    :cond_c
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    :goto_6
    return-void
.end method

.method getApnDataFromUri(Landroid/net/Uri;)Lcom/android/settings/network/ApnEditor$ApnData;
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/settings/network/ApnEditor;->sProjection:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v2, Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-direct {v2, p1, v1}, Lcom/android/settings/network/ApnEditor$ApnData;-><init>(Landroid/net/Uri;Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    :try_start_4
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    goto :goto_2

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getApnDataFromUri exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_2

    sget-object v1, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t get apnData from Uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method public synthetic lambda$updateApnDataToDatabase$0$ApnEditor(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 4

    sget-object v0, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "postOnBackgroundThread updateApnDataToDatabase start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t add a new apn to database "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_0
    sget-object v0, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "postOnBackgroundThread updateApnDataToDatabase end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f160013

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ApnEditor;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12015f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

    const-string v1, "apn_name"

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/EditTextPreference;

    iput-object v1, v0, Lcom/android/settings/network/ApnEditor;->mName:Landroidx/preference/EditTextPreference;

    const-string v1, "apn_apn"

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/EditTextPreference;

    iput-object v1, v0, Lcom/android/settings/network/ApnEditor;->mApn:Landroidx/preference/EditTextPreference;

    const-string v1, "apn_http_proxy"

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/EditTextPreference;

    iput-object v1, v0, Lcom/android/settings/network/ApnEditor;->mProxy:Landroidx/preference/EditTextPreference;

    const-string v1, "apn_http_port"

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/EditTextPreference;

    iput-object v1, v0, Lcom/android/settings/network/ApnEditor;->mPort:Landroidx/preference/EditTextPreference;

    const-string v1, "apn_user"

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/EditTextPreference;

    iput-object v1, v0, Lcom/android/settings/network/ApnEditor;->mUser:Landroidx/preference/EditTextPreference;

    const-string v1, "apn_server"

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/EditTextPreference;

    iput-object v1, v0, Lcom/android/settings/network/ApnEditor;->mServer:Landroidx/preference/EditTextPreference;

    const-string v1, "apn_password"

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/EditTextPreference;

    iput-object v1, v0, Lcom/android/settings/network/ApnEditor;->mPassword:Landroidx/preference/EditTextPreference;

    const-string v1, "apn_mms_proxy"

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/EditTextPreference;

    iput-object v1, v0, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Landroidx/preference/EditTextPreference;

    const-string v1, "apn_mms_port"

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/EditTextPreference;

    iput-object v1, v0, Lcom/android/settings/network/ApnEditor;->mMmsPort:Landroidx/preference/EditTextPreference;

    const-string v1, "apn_mmsc"

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/EditTextPreference;

    iput-object v1, v0, Lcom/android/settings/network/ApnEditor;->mMmsc:Landroidx/preference/EditTextPreference;

    const-string v1, "apn_mcc"

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/EditTextPreference;

    iput-object v1, v0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroidx/preference/EditTextPreference;

    const-string v1, "apn_mnc"

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/EditTextPreference;

    iput-object v1, v0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroidx/preference/EditTextPreference;

    const-string v1, "apn_type"

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/EditTextPreference;

    iput-object v1, v0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroidx/preference/EditTextPreference;

    const-string v1, "auth_type"

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/ListPreference;

    iput-object v1, v0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    const-string v1, "apn_protocol"

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/ListPreference;

    iput-object v1, v0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    const-string v1, "apn_roaming_protocol"

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/ListPreference;

    iput-object v1, v0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    const-string v1, "carrier_enabled"

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreference;

    iput-object v1, v0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    const-string v1, "bearer_multi"

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/MultiSelectListPreference;

    iput-object v1, v0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    iget-object v1, v0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    const v2, 0x7f12063d

    invoke-virtual {v1, v2}, Landroidx/preference/MultiSelectListPreference;->setPositiveButtonText(I)V

    iget-object v1, v0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    const v2, 0x7f120638

    invoke-virtual {v1, v2}, Landroidx/preference/MultiSelectListPreference;->setNegativeButtonText(I)V

    const-string v1, "mvno_type"

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/ListPreference;

    iput-object v2, v0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    const-string v2, "mvno_match_data"

    invoke-virtual {v0, v2}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/EditTextPreference;

    iput-object v3, v0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    return-void

    :cond_0
    const/4 v5, -0x1

    const-string v6, "sub_id"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lcom/android/settings/network/ApnEditor;->mSubId:I

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApn:Z

    const/4 v6, 0x0

    iput-object v6, v0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    iput-object v6, v0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    nop

    const-string v7, "carrier_config"

    invoke-virtual {v0, v7}, Lcom/android/settings/network/ApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/CarrierConfigManager;

    if-eqz v7, :cond_2

    iget v8, v0, Lcom/android/settings/network/ApnEditor;->mSubId:I

    invoke-virtual {v7, v8}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v8

    if-eqz v8, :cond_2

    const-string v9, "read_only_apn_types_string_array"

    invoke-virtual {v8, v9}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    iget-object v9, v0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, v0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    array-length v10, v9

    move v11, v5

    :goto_0
    if-ge v11, v10, :cond_1

    aget-object v12, v9, v11

    sget-object v13, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onCreate: read only APN type: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    const-string v9, "read_only_apn_fields_string_array"

    invoke-virtual {v8, v9}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    :cond_2
    const/4 v8, 0x0

    const-string v9, "android.intent.action.EDIT"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "android.intent.action.INSERT"

    const/4 v11, 0x1

    if-eqz v9, :cond_3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v1}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Edit request not for carrier table. Uri: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    return-void

    :cond_3
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    iput-object v9, v0, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    iget-object v9, v0, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    sget-object v12, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v12}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v9

    if-nez v9, :cond_4

    sget-object v1, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Insert request not for carrier table. Uri: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    return-void

    :cond_4
    iput-boolean v11, v0, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/network/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    :cond_5
    iput-object v6, v0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    if-eqz v8, :cond_6

    invoke-virtual {v0, v8}, Lcom/android/settings/network/ApnEditor;->getApnDataFromUri(Landroid/net/Uri;)Lcom/android/settings/network/ApnEditor$ApnData;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    :cond_6
    iget-object v1, v0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    if-nez v1, :cond_7

    new-instance v1, Lcom/android/settings/network/ApnEditor$ApnData;

    sget-object v2, Lcom/android/settings/network/ApnEditor;->sProjection:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v1, v2}, Lcom/android/settings/network/ApnEditor$ApnData;-><init>(I)V

    iput-object v1, v0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/network/ApnEditor;->setDefaultData()V

    :cond_7
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, v0, Lcom/android/settings/network/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, v0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v2, 0x17

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v11, :cond_8

    move v1, v11

    goto :goto_1

    :cond_8
    move v1, v5

    :goto_1
    sget-object v2, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCreate: EDITED "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_a

    iget-object v2, v0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v6, 0x18

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v6, v9}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    iget-object v6, v0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v9, 0xf

    invoke-virtual {v6, v9}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v2, v6}, Lcom/android/settings/network/ApnEditor;->apnTypesMatch([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v6, 0x1a

    invoke-virtual {v2, v6}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v11, :cond_a

    :cond_9
    sget-object v2, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v6, "onCreate: apnTypesMatch; read-only APN"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v11, v0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApn:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/network/ApnEditor;->disableAllFields()V

    goto :goto_2

    :cond_a
    iget-object v2, v0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, v0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/android/settings/network/ApnEditor;->disableFields([Ljava/lang/String;)V

    :cond_b
    :goto_2
    iget-object v2, v0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v6, 0x19

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v6, v9}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v11, :cond_c

    move v2, v11

    goto :goto_3

    :cond_c
    move v2, v5

    :goto_3
    iput-boolean v2, v0, Lcom/android/settings/network/ApnEditor;->mDeletableApn:Z

    const/4 v2, 0x0

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnEditor;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v6

    if-ge v2, v6, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnEditor;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroidx/preference/PreferenceScreen;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_d
    if-nez p1, :cond_e

    move v2, v11

    goto :goto_5

    :cond_e
    move v2, v5

    :goto_5
    invoke-virtual {v0, v2}, Lcom/android/settings/network/ApnEditor;->fillUI(Z)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/android/settings/network/ApnEditor;->ACTION_FROM:Ljava/lang/String;

    invoke-virtual {v3, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings/network/ApnEditor;->mIsFromHM:Z

    iget-boolean v2, v0, Lcom/android/settings/network/ApnEditor;->mIsFromHM:Z

    if-eqz v2, :cond_f

    iput-boolean v5, v0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApn:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/network/ApnEditor;->disableAllFields()V

    iget-object v2, v0, Lcom/android/settings/network/ApnEditor;->mApn:Landroidx/preference/EditTextPreference;

    invoke-virtual {v2, v11}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    iget-object v2, v0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    invoke-virtual {v2, v11}, Landroidx/preference/ListPreference;->setEnabled(Z)V

    :cond_f
    return-void

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    iget-boolean v0, p0, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApn:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/network/ApnEditor;->mDeletableApn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const v2, 0x7f120a6d

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f0801d1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    const/4 v0, 0x2

    const v2, 0x7f120a7a

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x108004e

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x3

    const v2, 0x7f120a6c

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->validateAndSaveApnData()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->apnEditorFinish()V

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->validateAndSaveApnData()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->apnEditorFinish()V

    :cond_2
    return v1

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->deleteApn()V

    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->apnEditorFinish()V

    return v1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auth_type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    invoke-virtual {v3, v1}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f030005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v1

    return v2

    :cond_0
    const-string v1, "apn_protocol"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    invoke-direct {p0, v1, v3}, Lcom/android/settings/network/ApnEditor;->protocolDescription(Ljava/lang/String;Landroidx/preference/ListPreference;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    const-string v1, "apn_roaming_protocol"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    invoke-direct {p0, v1, v3}, Lcom/android/settings/network/ApnEditor;->protocolDescription(Ljava/lang/String;Landroidx/preference/ListPreference;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    const-string v1, "bearer_multi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v1, p2

    check-cast v1, Ljava/util/Set;

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    move-object v3, p2

    check-cast v3, Ljava/util/Set;

    invoke-virtual {v2, v3}, Landroidx/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    const-string v1, "mvno_type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_8
    const-string v1, "apn_password"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Landroidx/preference/EditTextPreference;

    if-eqz p2, :cond_9

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_9
    const-string v2, ""

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/settings/network/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_a
    const-string v1, "carrier_enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_2

    :cond_b
    if-eqz p2, :cond_c

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_c
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    const/4 v1, 0x1

    return v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v0, p5}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p4, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq p3, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    return v1
.end method

.method setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v0, p5}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez p4, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v1
.end method

.method showError()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {p0}, Lcom/android/settings/network/ApnEditor$ErrorDialog;->showError(Lcom/android/settings/network/ApnEditor;)V

    return-void
.end method

.method validateAndSaveApnData()Z
    .locals 19
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    move-object/from16 v6, p0

    iget-boolean v0, v6, Lcom/android/settings/network/ApnEditor;->mReadOnlyApn:Z

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v0, :cond_0

    return v7

    :cond_0
    iget-object v0, v6, Lcom/android/settings/network/ApnEditor;->mName:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v0, v6, Lcom/android/settings/network/ApnEditor;->mApn:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v0, v6, Lcom/android/settings/network/ApnEditor;->mMcc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v0, v6, Lcom/android/settings/network/ApnEditor;->mMnc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnEditor;->validateApnData()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnEditor;->showError()V

    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v14, v0

    iget-boolean v15, v6, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    const/4 v5, 0x1

    const-string v2, "name"

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v3, v9

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v15

    const/4 v5, 0x2

    const-string v2, "apn"

    move-object v3, v10

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v15

    iget-object v0, v6, Lcom/android/settings/network/ApnEditor;->mProxy:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    const-string v2, "proxy"

    move-object/from16 v0, p0

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v15

    iget-object v0, v6, Lcom/android/settings/network/ApnEditor;->mPort:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const-string v2, "port"

    move-object/from16 v0, p0

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v15

    iget-object v0, v6, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xc

    const-string v2, "mmsproxy"

    move-object/from16 v0, p0

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v15

    iget-object v0, v6, Lcom/android/settings/network/ApnEditor;->mMmsPort:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xd

    const-string v2, "mmsport"

    move-object/from16 v0, p0

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v15

    iget-object v0, v6, Lcom/android/settings/network/ApnEditor;->mUser:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x5

    const-string v2, "user"

    move-object/from16 v0, p0

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v15

    iget-object v0, v6, Lcom/android/settings/network/ApnEditor;->mServer:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x6

    const-string v2, "server"

    move-object/from16 v0, p0

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v15

    iget-object v0, v6, Lcom/android/settings/network/ApnEditor;->mPassword:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x7

    const-string v2, "password"

    move-object/from16 v0, p0

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v15

    iget-object v0, v6, Lcom/android/settings/network/ApnEditor;->mMmsc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x8

    const-string v2, "mmsc"

    move-object/from16 v0, p0

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v15

    iget-object v0, v6, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_2

    nop

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v5, 0xe

    const-string v2, "authtype"

    move-object/from16 v0, p0

    move-object v1, v14

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v0

    move v15, v0

    :cond_2
    iget-object v0, v6, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x10

    const-string v2, "protocol"

    move-object/from16 v0, p0

    move-object v1, v14

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v15

    iget-object v0, v6, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x14

    const-string v2, "roaming_protocol"

    move-object/from16 v0, p0

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v15

    nop

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/network/ApnEditor;->getUserEnteredApnType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/settings/network/ApnEditor;->checkApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xf

    const-string v2, "type"

    move-object/from16 v0, p0

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v15

    const/16 v5, 0x9

    const-string v2, "mcc"

    move-object v3, v11

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v15

    const/16 v5, 0xa

    const-string v2, "mnc"

    move-object v3, v12

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "numeric"

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/settings/network/ApnEditor;->mCurMnc:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v1, v6, Lcom/android/settings/network/ApnEditor;->mCurMcc:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v6, Lcom/android/settings/network/ApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "current"

    invoke-virtual {v14, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    iget-object v0, v6, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v0}, Landroidx/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v17

    const/4 v0, 0x0

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    const/4 v0, 0x0

    move v5, v0

    goto :goto_1

    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v3

    or-int/2addr v0, v3

    goto :goto_0

    :cond_5
    move v5, v0

    :goto_1
    const/16 v18, 0x13

    const-string v2, "bearer_bitmask"

    move-object/from16 v0, p0

    move-object v1, v14

    move v3, v5

    move v4, v15

    move v7, v5

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v15

    if-eqz v7, :cond_8

    iget v0, v6, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v7, v0}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, v6, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    move/from16 v18, v0

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    move/from16 v18, v0

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v0, 0x0

    move/from16 v18, v0

    :goto_3
    const/16 v5, 0x12

    const-string v2, "bearer"

    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v3, v18

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v15

    iget-object v0, v6, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x15

    const-string v2, "mvno_type"

    move-object/from16 v0, p0

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v15

    iget-object v0, v6, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x16

    const-string v2, "mvno_match_data"

    move-object/from16 v0, p0

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v15

    nop

    iget-object v0, v6, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/SwitchPreference;->isChecked()Z

    move-result v3

    const/16 v5, 0x11

    const-string v2, "carrier_enabled"

    move-object/from16 v0, p0

    move-object v1, v14

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v0

    const-string v1, "edited"

    invoke-virtual {v14, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v0, :cond_b

    iget-object v1, v6, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v1}, Lcom/android/settings/network/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_9

    iget-object v1, v6, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    goto :goto_4

    :cond_9
    iget-object v1, v6, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v1}, Lcom/android/settings/network/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v1

    :goto_4
    invoke-direct {v6, v1, v14}, Lcom/android/settings/network/ApnEditor;->updateApnDataToDatabase(Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-boolean v2, v6, Lcom/android/settings/network/ApnEditor;->mIsFromHM:Z

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    iput-boolean v2, v6, Lcom/android/settings/network/ApnEditor;->mIsPreferenceChanged:Z

    goto :goto_5

    :cond_a
    const/4 v2, 0x1

    goto :goto_5

    :cond_b
    const/4 v2, 0x1

    :goto_5
    return v2
.end method

.method validateApnData()Ljava/lang/String;
    .locals 15
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroidx/preference/EditTextPreference;

    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroidx/preference/EditTextPreference;

    invoke-virtual {v2}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v3}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v4}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f1206f1

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f1206ed

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x3

    if-eq v5, v7, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const v7, 0xfffe

    and-int/2addr v5, v7

    if-eq v5, v6, :cond_5

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f1206f0

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f1206ef

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/android/settings/network/ApnEditor;->mIsFromHM:Z

    if-eqz v5, :cond_6

    return-object v0

    :cond_6
    if-nez v0, :cond_9

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->getUserEnteredApnType()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/android/settings/network/ApnEditor;->apnTypesMatch([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    array-length v8, v7

    const/4 v9, 0x0

    move v10, v9

    :goto_2
    if-ge v10, v8, :cond_7

    aget-object v11, v7, v10

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "validateApnData: appending type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lt v7, v6, :cond_8

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v5, v7, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1206ec

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_9
    return-object v0
.end method
