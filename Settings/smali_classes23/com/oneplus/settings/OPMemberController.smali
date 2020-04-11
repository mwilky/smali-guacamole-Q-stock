.class public Lcom/oneplus/settings/OPMemberController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPMemberController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/oneplus/settings/utils/OPOkHttpUtils$NetCall;


# static fields
.field private static final ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field private static final ACCESS_TOKEN_API_URL:Ljava/lang/String; = "https://gateway.oneplus.net/v2/oauth/token"

.field private static final ACCOUNT_PROVIDER_URL:Ljava/lang/String; = "content://com.oneplus.account.provider.open"

.field private static final AVATAR:Ljava/lang/String; = "avatar"

.field private static final CLIENT_ID:Ljava/lang/String; = "a291040ba78042b39d1ab8ba35396478"

.field private static final CLIENT_SECRET:Ljava/lang/String; = "c56f745f667b449aa6ffff36c4f03dd7"

.field public static final CLIENT_TYPE:Ljava/lang/String; = "3"

.field private static final CONTENT:Ljava/lang/String; = "content"

.field private static final DATA:Ljava/lang/String; = "data"

.field private static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "extra_package_name"

.field private static final EXTRA_START_MEMBER_CHANNEL_KEY:Ljava/lang/String; = "start_member_ship_channel"

.field private static final ICON:Ljava/lang/String; = "icon"

.field private static final KEY_MEMBER:Ljava/lang/String; = "member_sign"

.field private static final MEMBER_API_URL:Ljava/lang/String; = "https://gateway.oneplus.net/v2/api/router"

.field private static final NEW_VERSION:Ljava/lang/String; = "benefitVersion"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.android.settings"

.field private static final RET:Ljava/lang/String; = "ret"

.field private static final SUCCESS:Ljava/lang/String; = "1"

.field private static final TITLE:Ljava/lang/String; = "title"

.field private static final USER_DATA_ONEPLUS_TOKEN:Ljava/lang/String; = "token"

.field public static final VERSION_NAME:Ljava/lang/String; = "1.0.0"


# instance fields
.field private errCount:I

.field private mContext:Landroid/content/Context;

.field private mOPMemberPreference:Lcom/oneplus/settings/ui/OPMemberPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "member_sign"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/OPMemberController;->errCount:I

    iput-object p1, p0, Lcom/oneplus/settings/OPMemberController;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPMemberController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPMemberController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPMemberController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPMemberController;->getData(Ljava/lang/String;)V

    return-void
.end method

.method private getAccessToken()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "client_id"

    const-string v2, "a291040ba78042b39d1ab8ba35396478"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "client_secret"

    const-string v2, "c56f745f667b449aa6ffff36c4f03dd7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "grant_type"

    const-string v2, "client_credentials"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/oneplus/settings/utils/OPOkHttpUtils;->getInstance()Lcom/oneplus/settings/utils/OPOkHttpUtils;

    move-result-object v1

    new-instance v2, Lcom/oneplus/settings/OPMemberController$1;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/OPMemberController$1;-><init>(Lcom/oneplus/settings/OPMemberController;)V

    const-string v3, "https://gateway.oneplus.net/v2/oauth/token"

    invoke-virtual {v1, v3, v0, v2}, Lcom/oneplus/settings/utils/OPOkHttpUtils;->postDataAsyn(Ljava/lang/String;Ljava/util/Map;Lcom/oneplus/settings/utils/OPOkHttpUtils$NetCall;)V

    return-void
.end method

.method private getData(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/oneplus/settings/OPMemberController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/OPMemberController;->getOnePlusTokenForProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "access_token"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "client_id"

    const-string v3, "a291040ba78042b39d1ab8ba35396478"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "method"

    const-string v3, "member.app.copywriting.get"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "client"

    const-string v4, "3"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "deviceName"

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "model"

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->getDeviceModel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "deviceId"

    iget-object v4, p0, Lcom/oneplus/settings/OPMemberController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/oneplus/settings/utils/OPUtils;->getOPSafeUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "lang"

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->getLang()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "version"

    const-string v4, "1.0.0"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "packageName"

    const-string v4, "com.android.settings"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "token"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "biz_content"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-static {v1}, Lcom/oneplus/settings/utils/SignUtils;->getSignContent(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/settings/utils/SignUtils;->rsa256Sign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "sign"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/oneplus/settings/utils/OPOkHttpUtils;->getInstance()Lcom/oneplus/settings/utils/OPOkHttpUtils;

    move-result-object v5

    const-string v6, "https://gateway.oneplus.net/v2/api/router"

    invoke-virtual {v5, v6, v1, p0}, Lcom/oneplus/settings/utils/OPOkHttpUtils;->postDataAsyn(Ljava/lang/String;Ljava/util/Map;Lcom/oneplus/settings/utils/OPOkHttpUtils$NetCall;)V

    return-void
.end method

.method private getOnePlusTokenForProvider(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "extra_package_name"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://com.oneplus.account.provider.open"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "get_account_oneplus_token"

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-nez v2, :cond_0

    return-object v0

    :cond_0
    const/4 v3, 0x0

    const-string v4, "token"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v0

    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    return-object v3
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "member_sign"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPMemberPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPMemberController;->mOPMemberPreference:Lcom/oneplus/settings/ui/OPMemberPreference;

    return-void
.end method

.method public failed(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/OPMemberController;->mContext:Landroid/content/Context;

    const-string v1, "com.oneplus.membership"

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "member_sign"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "member_sign"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.member.action.main.page"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "start_member_ship_channel"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oneplus/settings/OPMemberController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/oneplus/settings/OPMemberController;->mOPMemberPreference:Lcom/oneplus/settings/ui/OPMemberPreference;

    invoke-virtual {v1}, Lcom/oneplus/settings/ui/OPMemberPreference;->clearNew()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/OPMemberController;->mContext:Landroid/content/Context;

    const-string v1, "com.oneplus.membership"

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/OPMemberController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "access_token"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/settings/OPMemberController;->getData(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public success(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "benefitVersion"

    const-string v1, "icon"

    const-string v2, "avatar"

    const-string v3, "content"

    const-string v4, "title"

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "ret"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "data"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, ""

    if-eqz v8, :cond_0

    move-object v4, v9

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v3, v9

    goto :goto_1

    :cond_1
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v2, v9

    goto :goto_2

    :cond_2
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v1, v9

    goto :goto_3

    :cond_3
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    :goto_4
    move-object v0, v9

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v9, "member_title"

    invoke-interface {v8, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "member_content"

    invoke-interface {v8, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "member_avatar"

    invoke-interface {v8, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "member_icon"

    invoke-interface {v8, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "member_new_version"

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "token"

    iget-object v10, p0, Lcom/oneplus/settings/OPMemberController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v10}, Lcom/oneplus/settings/OPMemberController;->getOnePlusTokenForProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcom/oneplus/settings/OPMemberController;->mOPMemberPreference:Lcom/oneplus/settings/ui/OPMemberPreference;

    invoke-virtual {v9, v8}, Lcom/oneplus/settings/ui/OPMemberPreference;->setData(Ljava/util/Map;)V

    goto :goto_5

    :cond_5
    iget v0, p0, Lcom/oneplus/settings/OPMemberController;->errCount:I

    if-nez v0, :cond_6

    iget v0, p0, Lcom/oneplus/settings/OPMemberController;->errCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/settings/OPMemberController;->errCount:I

    invoke-direct {p0}, Lcom/oneplus/settings/OPMemberController;->getAccessToken()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :cond_6
    :goto_5
    nop

    :goto_6
    goto :goto_7

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_7
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    return-void
.end method
