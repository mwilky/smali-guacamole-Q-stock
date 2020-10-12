.class public Lcom/oneplus/accountsdk/utils/OPAuthConstants;
.super Ljava/lang/Object;


# static fields
.field public static final ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final ACCOUNT_AUTH_TOKEN:Ljava/lang/String; = "authtoken"

.field public static final ACCOUNT_DATA_OPENID:Ljava/lang/String; = "openId"

.field public static final ACCOUNT_HEYTAP_TOKEN:Ljava/lang/String; = "oplustoken"

.field public static final ACTION_ONEPLUS_ACCOUNT_LOGIN:Ljava/lang/String; = "com.onplus.account.login.broadcast"

.field public static ALITA_API_URL:Ljava/lang/String; = null

.field public static final BIZ_CONTENT:Ljava/lang/String; = "biz_content"

.field public static final CLIENT_ID:Ljava/lang/String; = "client_id"

.field public static final CLIENT_SECRET:Ljava/lang/String; = "client_secret"

.field public static final COMMON_PARAMS_APP:Ljava/lang/String; = "app"

.field public static final COMMON_PARAMS_CLIENT:Ljava/lang/String; = "client"

.field public static final COMMON_PARAMS_DEVICEID:Ljava/lang/String; = "deviceId"

.field public static final COMMON_PARAMS_DEVICENAME:Ljava/lang/String; = "deviceName"

.field public static final COMMON_PARAMS_DEVICETYPE:Ljava/lang/String; = "deviceType"

.field public static final COMMON_PARAMS_LANGUAGE:Ljava/lang/String; = "lang"

.field public static final COMMON_PARAMS_PACKAGE:Ljava/lang/String; = "packageName"

.field public static final COMMON_PARAMS_SN:Ljava/lang/String; = "sn"

.field public static final COMMON_PARAMS_VERSION:Ljava/lang/String; = "version"

.field public static final EXTRA_AUTH_INFO:Ljava/lang/String; = "extra_auth_info"

.field public static final EXTRA_BIND_INFO_ARRAY:Ljava/lang/String; = "extra_bind_info_array"

.field public static final EXTRA_BUNDLE_KEY:Ljava/lang/String; = "extra_bundle"

.field public static final EXTRA_ERROR_RESPONSE:Ljava/lang/String; = "response"

.field public static final EXTRA_MIDDLE:Ljava/lang/String; = "extra_middle"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "extra_package_name"

.field public static final EXTRA_REQUEST_FROM:Ljava/lang/String; = "extra_request_from"

.field public static final EXTRA_STATUS_CODE:Ljava/lang/String; = "extra_statusCode"

.field public static GET_ACCESS_TOKEN_URL:Ljava/lang/String; = null

.field public static final GRANT_TYPE:Ljava/lang/String; = "grant_type"

.field public static final GRANT_TYPE_VALUE:Ljava/lang/String; = "client_credentials"

.field public static final LOCAL_RES_URL:Ljava/lang/String; = "file:///android_res/raw"

.field public static final ONEPLUS_ACCOUNT_ACCOUNT_CENTER_V1570:I = 0x622

.field public static final ONEPLUS_ACCOUNT_ACCOUNT_CENTER_V400:I = 0x190

.field public static final ONEPLUS_ACCOUNT_INFO_PAGE_NOT_CRASH_V330:I = 0x14a

.field public static final ONEPLUS_ACCOUNT_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.account"

.field public static final ONEPLUS_ACCOUNT_SUPPORT_BIND_INFO_V420:I = 0x1a4

.field public static final ONEPLUS_ACCOUNT_TYPE:Ljava/lang/String; = "com.oneplus.account"

.field public static final PERMISSION_REQUEST_GET_ACCOUNTS:I = 0x2

.field public static final REQUEST_CALL_CHOOSE_ACCOUNT:I = 0x2

.field public static final REQUEST_CALL_LOGIN:I = 0x3

.field public static final SERVER_ERROR_CODE:Ljava/lang/String; = "errCode"

.field public static final SERVER_ERROR_MSG:Ljava/lang/String; = "errMsg"

.field public static final SERVER_OPENID:Ljava/lang/String; = "openId"

.field public static final SERVER_REFRESHTOKEN:Ljava/lang/String; = "refreshToken"

.field public static final SERVER_REFRESHTOKENEXPIRE:Ljava/lang/String; = "refreshTokenExpire"

.field public static final SERVER_REFRESHTOKENTIME:Ljava/lang/String; = "refreshTokenTime"

.field public static final SERVER_TOKEN:Ljava/lang/String; = "token"

.field public static final SERVER_USERID:Ljava/lang/String; = "userId"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/oneplus/accountsdk/utils/OnePlusServerConfigUtils;->getServerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "oauth/token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/accountsdk/utils/OPAuthConstants;->GET_ACCESS_TOKEN_URL:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/oneplus/accountsdk/utils/OnePlusServerConfigUtils;->getServerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "api/router"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/accountsdk/utils/OPAuthConstants;->ALITA_API_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
