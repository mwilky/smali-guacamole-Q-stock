.class public Lcom/android/settings/wifi/dpp/WifiQrCode;
.super Ljava/lang/Object;
.source "WifiQrCode.java"


# static fields
.field public static final DELIMITER_QR_CODE:Ljava/lang/String; = ";"

.field public static final PREFIX_DPP:Ljava/lang/String; = "DPP:"

.field public static final PREFIX_DPP_INFORMATION:Ljava/lang/String; = "I:"

.field public static final PREFIX_DPP_PUBLIC_KEY:Ljava/lang/String; = "K:"

.field public static final PREFIX_ZXING_HIDDEN_SSID:Ljava/lang/String; = "H:"

.field public static final PREFIX_ZXING_PASSWORD:Ljava/lang/String; = "P:"

.field public static final PREFIX_ZXING_SECURITY:Ljava/lang/String; = "T:"

.field public static final PREFIX_ZXING_SSID:Ljava/lang/String; = "S:"

.field public static final PREFIX_ZXING_WIFI_NETWORK_CONFIG:Ljava/lang/String; = "WIFI:"

.field public static final SCHEME_DPP:Ljava/lang/String; = "DPP"

.field public static final SCHEME_ZXING_WIFI_NETWORK_CONFIG:Ljava/lang/String; = "WIFI"

.field public static final SECURITY_NO_PASSWORD:Ljava/lang/String; = "nopass"

.field public static final SECURITY_NO_PASSWORD_OWE:Ljava/lang/String; = "nopassowe"

.field public static final SECURITY_SAE:Ljava/lang/String; = "SAE"

.field public static final SECURITY_WEP:Ljava/lang/String; = "WEP"

.field public static final SECURITY_WPA_PSK:Ljava/lang/String; = "WPA"


# instance fields
.field private mInformation:Ljava/lang/String;

.field private mPublicKey:Ljava/lang/String;

.field private mQrCode:Ljava/lang/String;

.field private mScheme:Ljava/lang/String;

.field private mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiQrCode;->mQrCode:Ljava/lang/String;

    const-string v0, "DPP:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DPP"

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiQrCode;->mScheme:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiQrCode;->parseWifiDppQrCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "WIFI:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WIFI"

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiQrCode;->mScheme:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiQrCode;->parseZxingWifiQrCode(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid scheme"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty QR code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getKeyValueList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(?<!\\\\)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public static getValidWifiDppQrCodeOrNull(Ljava/lang/String;)Lcom/android/settings/wifi/dpp/WifiQrCode;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/android/settings/wifi/dpp/WifiQrCode;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/dpp/WifiQrCode;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-virtual {v1}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DPP"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    return-object v0
.end method

.method private getValueOrNull(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private parseWifiDppQrCode(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "DPP:"

    const-string v1, ";"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getKeyValueList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v1, "K:"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getValueOrNull(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v1, p0, Lcom/android/settings/wifi/dpp/WifiQrCode;->mPublicKey:Ljava/lang/String;

    const-string v2, "I:"

    invoke-direct {p0, v0, v2}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getValueOrNull(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/dpp/WifiQrCode;->mInformation:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid format"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private parseZxingWifiQrCode(Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "WIFI:"

    const-string v1, ";"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getKeyValueList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v1, "T:"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getValueOrNull(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "S:"

    invoke-direct {p0, v0, v2}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getValueOrNull(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "P:"

    invoke-direct {p0, v0, v3}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getValueOrNull(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "H:"

    invoke-direct {p0, v0, v4}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getValueOrNull(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/dpp/WifiQrCode;->removeBackSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/dpp/WifiQrCode;->removeBackSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/dpp/WifiQrCode;->removeBackSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move v9, v5

    invoke-static/range {v6 .. v11}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getValidConfigOrNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/dpp/WifiQrCode;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    iget-object v6, p0, Lcom/android/settings/wifi/dpp/WifiQrCode;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    if-eqz v6, :cond_0

    return-void

    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid format"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method


# virtual methods
.method public getInformation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiQrCode;->mInformation:Ljava/lang/String;

    return-object v0
.end method

.method getPublicKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiQrCode;->mPublicKey:Ljava/lang/String;

    return-object v0
.end method

.method public getQrCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiQrCode;->mQrCode:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiQrCode;->mScheme:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiNetworkConfig()Lcom/android/settings/wifi/dpp/WifiNetworkConfig;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiQrCode;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    invoke-direct {v1, v0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;-><init>(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)V

    return-object v1
.end method

.method removeBackSlash(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-char v5, v2, v4

    const/16 v6, 0x5c

    if-eq v5, v6, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
