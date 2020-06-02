.class public Lcom/android/server/secrecy/zta/zta;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CM:Ljava/lang/String; = "encrypt_app"

.field private static final DM:Ljava/lang/String; = "encrypt_log"

.field private static final EM:Ljava/lang/String; = "encrypt_adb"

.field private static final GM:Ljava/lang/String; = "14o4ia2g027r2dcmf4mw9f1pvoifswti3i2x1fvtmxsqpjvjqj1ry3dvmlyuwn9lhxl03bgvxxo5sgj5opu1l8vov2jrdlaf3031z3drh72068omvyft11qdaszicxys2bjqi9sxl5z79mzy6dcmubwqyi7fr424okmq9wyxctpmni43ok5d2ac9v5dezpu68send5foga4xxnpckhuzcjhnb4y7ot4z0ypm9j3hb59ax8v7n4ed82p01xtmu73iajvjnxov4wfuni17mmhi9smsf3sak8q9k04no4u8f7um8h4qhqk3xww3nmohl4190hr2rwnsw5nw1qs7vh60adz8a94qkeerkvvkf2b6qznm3q5x2aa1e8u9fq4liav015vwx5xzfn64b"

.field private static final HM:Ljava/lang/String; = "1ekh"

.field private static final IM:J = 0x5265c00L

.field private static final JM:Ljava/lang/String; = "stamp"

.field private static final KM:Ljava/lang/String; = "encrypt_all"

.field private static final LM:Ljava/lang/String; = "unlock_type"

.field public static final MM:Ljava/lang/String; = "internal"

.field public static final NM:Ljava/lang/String; = "id"

.field public static final OM:Ljava/lang/String; = "mac"

.field private static final TAG:Ljava/lang/String; = "SecrecyService.DecryptTool"

.field private static final yM:Ljava/lang/String; = "imei"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPolicyManager:Lcom/android/server/secrecy/zta/sis;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/secrecy/zta/sis;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/secrecy/zta/zta;->mPolicyManager:Lcom/android/server/secrecy/zta/sis;

    iput-object p1, p0, Lcom/android/server/secrecy/zta/zta;->mContext:Landroid/content/Context;

    return-void
.end method

.method private verifySignature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string p0, "SecrecyService.DecryptTool"

    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x24

    const-string v2, "14o4ia2g027r2dcmf4mw9f1pvoifswti3i2x1fvtmxsqpjvjqj1ry3dvmlyuwn9lhxl03bgvxxo5sgj5opu1l8vov2jrdlaf3031z3drh72068omvyft11qdaszicxys2bjqi9sxl5z79mzy6dcmubwqyi7fr424okmq9wyxctpmni43ok5d2ac9v5dezpu68send5foga4xxnpckhuzcjhnb4y7ot4z0ypm9j3hb59ax8v7n4ed82p01xtmu73iajvjnxov4wfuni17mmhi9smsf3sak8q9k04no4u8f7um8h4qhqk3xww3nmohl4190hr2rwnsw5nw1qs7vh60adz8a94qkeerkvvkf2b6qznm3q5x2aa1e8u9fq4liav015vwx5xzfn64b"

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "1ekh"

    invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v2}, Lcom/android/server/secrecy/zta;->sis(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/security/PublicKey;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p2}, Landroid/secrecy/RC4;->decodeHex(Ljava/lang/String;)[B

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0, p2}, Lcom/android/server/secrecy/zta;->zta(Ljava/security/PublicKey;[B)[B

    move-result-object p2

    invoke-static {p1}, Lcom/android/server/secrecy/zta;->X(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    array-length p0, p2

    array-length v0, p1

    if-le p0, v0, :cond_1

    array-length p0, p1

    new-array p0, p0, [B

    array-length v0, p2

    array-length v2, p1

    sub-int/2addr v0, v2

    array-length v2, p1

    invoke-static {p2, v0, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    move-object p0, p2

    :goto_0
    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_2
    :goto_1
    const-string p1, "ERROR: Verify signature failed."

    :goto_2
    invoke-static {p0, p1}, Lcom/android/server/secrecy/zta/zta/zta;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catch_0
    const-string p1, "ERROR: Signature is malformat."

    goto :goto_2
.end method


# virtual methods
.method public you(Ljava/io/PrintWriter;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/secrecy/zta/zta;->mPolicyManager:Lcom/android/server/secrecy/zta/sis;

    invoke-virtual {v0}, Lcom/android/server/secrecy/zta/sis;->getImei()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/secrecy/zta/zta;->verifySignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "OK: key imported successful!"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "ERROR: The key to import is invalid."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public zta(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "config = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecrecyService.DecryptTool"

    invoke-static {v1, v0}, Lcom/android/server/secrecy/zta/zta/zta;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2e

    const/16 v2, 0xd

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/util/Properties;

    invoke-direct {p2}, Ljava/util/Properties;-><init>()V

    :try_start_0
    invoke-virtual {p2, v0}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string v2, "encrypt_app"

    invoke-virtual {p2, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encryptAppSuggest prop = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/secrecy/zta/zta/zta;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v2, "encrypt_log"

    invoke-virtual {p2, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encryptLogSuggest prop = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/server/secrecy/zta/zta/zta;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v2, "encrypt_adb"

    invoke-virtual {p2, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encryptAdbSuggest prop = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/server/secrecy/zta/zta/zta;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v2, "encrypt_all"

    invoke-virtual {p2, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encryptAll prop = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/secrecy/zta/zta/zta;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    :cond_6
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/android/server/secrecy/zta/zta;->mPolicyManager:Lcom/android/server/secrecy/zta/sis;

    invoke-virtual {p2, v0, v4}, Lcom/android/server/secrecy/zta/sis;->zta(Ljava/util/Map;Z)V

    :cond_7
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p0, p0, Lcom/android/server/secrecy/zta/zta;->mPolicyManager:Lcom/android/server/secrecy/zta/sis;

    const-string p2, "config"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/secrecy/zta/sis;->zta(Ljava/util/Map;Ljava/lang/String;)V

    const-string p0, "OK"

    goto :goto_0

    :cond_8
    const-string p0, "ERROR: Config argument is illegal."

    :goto_0
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catch_0
    const-string p0, "ERROR: Config argument is malformat."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public zta(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/android/server/secrecy/zta/zta;->mPolicyManager:Lcom/android/server/secrecy/zta/sis;

    invoke-virtual {v4}, Lcom/android/server/secrecy/zta/sis;->getImei()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "config = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", signature = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SecrecyService.DecryptTool"

    invoke-static {v6, v5}, Lcom/android/server/secrecy/zta/zta/zta;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "imei = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/server/secrecy/zta/zta/zta;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x2e

    const/16 v7, 0xd

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    :try_start_0
    invoke-virtual {v5, v7}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v7, "imei"

    invoke-virtual {v5, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    if-eqz v7, :cond_12

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_8

    :cond_0
    const-string v4, "stamp"

    invoke-virtual {v5, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "ERROR: Signature doesn\'t match."

    if-eqz v4, :cond_3

    const/16 v2, 0x10

    :try_start_1
    invoke-static {v4, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v9
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/32 v13, 0x5265c00

    add-long v15, v11, v13

    cmp-long v2, v9, v15

    if-gtz v2, :cond_2

    sub-long/2addr v11, v13

    cmp-long v2, v9, v11

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/secrecy/sis;->getInstance()Lcom/android/server/secrecy/sis;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Lcom/android/server/secrecy/sis;->oxb(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    const-string v0, "ERROR: stamp is expired."

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catch_0
    const-string v0, "ERROR: stamp is invalid."

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-direct {v0, v2, v3}, Lcom/android/server/secrecy/zta/zta;->verifySignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_4
    const-string v2, "encrypt_app"

    invoke-virtual {v5, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encryptAppSuggest prop = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/server/secrecy/zta/zta/zta;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :cond_5
    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v7, 0x2

    const/4 v9, 0x0

    const-string v10, "false"

    const/4 v11, 0x1

    if-eqz v4, :cond_6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_1
    invoke-interface {v8, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_1

    :cond_7
    :goto_2
    const-string v2, "encrypt_log"

    invoke-virtual {v5, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "encryptLogSuggest prop = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/server/secrecy/zta/zta/zta;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :cond_8
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_3
    invoke-interface {v8, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_3

    :cond_a
    :goto_4
    const-string v2, "encrypt_adb"

    invoke-virtual {v5, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "encryptAdbSuggest prop = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/server/secrecy/zta/zta/zta;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :cond_b
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v7, 0x4

    if-eqz v4, :cond_c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_5
    invoke-interface {v8, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_c
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_5

    :cond_d
    :goto_6
    const-string v2, "encrypt_all"

    invoke-virtual {v5, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "encryptAll prop = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/server/secrecy/zta/zta/zta;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :cond_e
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v2, v0, Lcom/android/server/secrecy/zta/zta;->mPolicyManager:Lcom/android/server/secrecy/zta/sis;

    invoke-virtual {v2, v8, v11}, Lcom/android/server/secrecy/zta/sis;->zta(Ljava/util/Map;Z)V

    goto :goto_7

    :cond_f
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v0, Lcom/android/server/secrecy/zta/zta;->mPolicyManager:Lcom/android/server/secrecy/zta/sis;

    invoke-virtual {v2, v8, v9}, Lcom/android/server/secrecy/zta/sis;->zta(Ljava/util/Map;Z)V

    :cond_10
    :goto_7
    const-string v2, "unlock_type"

    invoke-virtual {v5, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encryptUnlockType prop = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/server/secrecy/zta/zta/zta;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :cond_11
    iget-object v0, v0, Lcom/android/server/secrecy/zta/zta;->mPolicyManager:Lcom/android/server/secrecy/zta/sis;

    invoke-virtual {v0, v8, v2}, Lcom/android/server/secrecy/zta/sis;->zta(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "OK"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_12
    :goto_8
    const-string v0, "ERROR: IMEI doesn\'t match."

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v6, v0}, Lcom/android/server/secrecy/zta/zta/zta;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_1
    const-string v0, "ERROR: Config argument is malformat."

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
