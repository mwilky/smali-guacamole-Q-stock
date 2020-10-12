.class public Lcom/oneplus/accountsdk/utils/OnePlusAuthRSAUtils;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_BUFFERSIZE:I = 0x75

.field public static final DEFAULT_KEY_SIZE:I = 0x400

.field public static final DEFAULT_SPLIT:[B

.field public static final ECB_PKCS1_PADDING:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static final PRIVATE_KEY:Ljava/lang/String; = "RSAPrivateKey"

.field private static final PUBLIC_KEY:Ljava/lang/String; = "RSAPublicKey"

.field public static final RSA:Ljava/lang/String; = "RSA"

.field private static RSA_PUBLIC_KEY:Ljava/lang/String;

.field private static final publicKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDmX+bEIVJfGs9+Khz21zYlr4nFHCTj2JsHT1OgFAklhApmFAVkV9AzSx21RuXvO6Dn/6btsTtoVQUoe2qrkBUB5CELW6lIKaw25imRl6o6hd2mtprl+HM+zSS36bbugR8DEvFQFJxH4COd3WdhV7mB9t/csA0yhAl7h8he0G2FeQIDAQAB"

    sput-object v0, Lcom/oneplus/accountsdk/utils/OnePlusAuthRSAUtils;->RSA_PUBLIC_KEY:Ljava/lang/String;

    const-string v0, "#PART#"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/oneplus/accountsdk/utils/OnePlusAuthRSAUtils;->DEFAULT_SPLIT:[B

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/oneplus/accountsdk/utils/OnePlusAuthRSAUtils;->publicKeyMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encryptByPublicKey([B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string p1, "RSA"

    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptByPublicKeyForSpilt([B[B)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    array-length v0, p0

    const/16 v1, 0x75

    if-gt v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/oneplus/accountsdk/utils/OnePlusAuthRSAUtils;->encryptByPublicKey([B[B)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x800

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-array v3, v1, [B

    const/4 v4, 0x0

    move-object v5, v3

    move v3, v4

    move v6, v3

    move v7, v6

    :goto_0
    if-ge v3, v0, :cond_6

    aget-byte v8, p0, v3

    aput-byte v8, v5, v6

    const/4 v8, 0x1

    add-int/2addr v6, v8

    if-eq v6, v1, :cond_1

    add-int/lit8 v9, v0, -0x1

    if-ne v3, v9, :cond_5

    :cond_1
    add-int/lit8 v7, v7, 0x1

    if-eq v7, v8, :cond_2

    sget-object v6, Lcom/oneplus/accountsdk/utils/OnePlusAuthRSAUtils;->DEFAULT_SPLIT:[B

    array-length v9, v6

    move v10, v4

    :goto_1
    if-ge v10, v9, :cond_2

    aget-byte v11, v6, v10

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v5, p1}, Lcom/oneplus/accountsdk/utils/OnePlusAuthRSAUtils;->encryptByPublicKey([B[B)[B

    move-result-object v5

    array-length v6, v5

    move v9, v4

    :goto_2
    if-ge v9, v6, :cond_3

    aget-byte v10, v5, v9

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v0, -0x1

    if-ne v3, v5, :cond_4

    const/4 v5, 0x0

    goto :goto_3

    :cond_4
    sub-int v5, v0, v3

    sub-int/2addr v5, v8

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-array v5, v5, [B

    :goto_3
    move v6, v4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [B

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, p0, v4

    move v4, v1

    goto :goto_4

    :cond_7
    return-object p0
.end method

.method private static initPublicKey()Ljava/security/PublicKey;
    .locals 2

    sget-object v0, Lcom/oneplus/accountsdk/utils/OnePlusAuthRSAUtils;->publicKeyMap:Ljava/util/Map;

    const-string v1, "RSAPublicKey"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/accountsdk/utils/OnePlusAuthRSAUtils;->publicKeyMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/PublicKey;

    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/oneplus/accountsdk/utils/OnePlusAuthRSAUtils;->RSA_PUBLIC_KEY:Ljava/lang/String;

    invoke-static {v0}, Lcom/oneplus/accountsdk/utils/OnePlusAuthRSAUtils;->loadPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static loadPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string p0, "RSA"

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    check-cast p0, Ljava/security/interfaces/RSAPublicKey;

    sget-object v0, Lcom/oneplus/accountsdk/utils/OnePlusAuthRSAUtils;->publicKeyMap:Ljava/util/Map;

    const-string v1, "RSAPublicKey"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p0, Ljava/lang/Exception;

    const-string v0, "public key null"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    new-instance p0, Ljava/lang/Exception;

    const-string v0, "public key invalid"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_2
    move-exception p0

    new-instance p0, Ljava/lang/Exception;

    const-string v0, "public key noSuchAlgorithm"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static rsaEncrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/oneplus/accountsdk/utils/OnePlusAuthRSAUtils;->initPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oneplus/accountsdk/utils/OnePlusAuthRSAUtils;->encryptByPublicKeyForSpilt([B[B)[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
