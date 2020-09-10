.class public Lyou/zta/you/you;
.super Lorg/bouncycastle/asn1/dma/rtg;
.source ""


# static fields
.field private static Wsa:Ljava/util/Hashtable;

.field private static Xsa:Ljava/util/Hashtable;

.field private static Ysa:Ljava/util/Set;

.field private static ira:Ljava/util/Hashtable;

.field private static params:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lyou/zta/you/you;->Wsa:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lyou/zta/you/you;->params:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lyou/zta/you/you;->Xsa:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lyou/zta/you/you;->ira:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lyou/zta/you/you;->Ysa:Ljava/util/Set;

    sget-object v0, Lyou/zta/you/you;->Wsa:Ljava/util/Hashtable;

    new-instance v1, Lorg/bouncycastle/asn1/bvj;

    const-string v2, "1.2.840.113549.1.1.4"

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    const-string v3, "MD5WITHRSAENCRYPTION"

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->Wsa:Ljava/util/Hashtable;

    new-instance v1, Lorg/bouncycastle/asn1/bvj;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    const-string v3, "MD5WITHRSA"

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->Wsa:Ljava/util/Hashtable;

    new-instance v1, Lorg/bouncycastle/asn1/bvj;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    const-string v4, "RSAWITHMD5"

    invoke-virtual {v0, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->Wsa:Ljava/util/Hashtable;

    new-instance v1, Lorg/bouncycastle/asn1/bvj;

    const-string v4, "1.2.840.113549.1.1.5"

    invoke-direct {v1, v4}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    const-string v5, "SHA1WITHRSAENCRYPTION"

    invoke-virtual {v0, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->Wsa:Ljava/util/Hashtable;

    new-instance v1, Lorg/bouncycastle/asn1/bvj;

    invoke-direct {v1, v4}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    const-string v5, "SHA1WITHRSA"

    invoke-virtual {v0, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->Wsa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->sha224WithRSAEncryption:Lorg/bouncycastle/asn1/bvj;

    const-string v6, "SHA224WITHRSAENCRYPTION"

    invoke-virtual {v0, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->Wsa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->sha224WithRSAEncryption:Lorg/bouncycastle/asn1/bvj;

    const-string v6, "SHA224WITHRSA"

    invoke-virtual {v0, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->Wsa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->sha256WithRSAEncryption:Lorg/bouncycastle/asn1/bvj;

    const-string v7, "SHA256WITHRSAENCRYPTION"

    invoke-virtual {v0, v7, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->Wsa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->sha256WithRSAEncryption:Lorg/bouncycastle/asn1/bvj;

    const-string v7, "SHA256WITHRSA"

    invoke-virtual {v0, v7, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->Wsa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->sha384WithRSAEncryption:Lorg/bouncycastle/asn1/bvj;

    const-string v8, "SHA384WITHRSAENCRYPTION"

    invoke-virtual {v0, v8, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->Wsa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->sha384WithRSAEncryption:Lorg/bouncycastle/asn1/bvj;

    const-string v8, "SHA384WITHRSA"

    invoke-virtual {v0, v8, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->Wsa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->sha512WithRSAEncryption:Lorg/bouncycastle/asn1/bvj;

    const-string v9, "SHA512WITHRSAENCRYPTION"

    invoke-virtual {v0, v9, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->Wsa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->sha512WithRSAEncryption:Lorg/bouncycastle/asn1/bvj;

    const-string v9, "SHA512WITHRSA"

    invoke-virtual {v0, v9, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->Wsa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->id_RSASSA_PSS:Lorg/bouncycastle/asn1/bvj;

    const-string v10, "SHA1WITHRSAANDMGF1"

    invoke-virtual {v0, v10, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->Wsa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->id_RSASSA_PSS:Lorg/bouncycastle/asn1/bvj;

    const-string v11, "SHA224WITHRSAANDMGF1"

    invoke-virtual {v0, v11, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->Wsa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->id_RSASSA_PSS:Lorg/bouncycastle/asn1/bvj;

    const-string v12, "SHA256WITHRSAANDMGF1"

    invoke-virtual {v0, v12, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->Wsa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->id_RSASSA_PSS:Lorg/bouncycastle/asn1/bvj;

    const-string v13, "SHA384WITHRSAANDMGF1"

    invoke-virtual {v0, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->Wsa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->id_RSASSA_PSS:Lorg/bouncycastle/asn1/bvj;

    const-string v14, "SHA512WITHRSAANDMGF1"

    invoke-virtual {v0, v14, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->Wsa:Ljava/util/Hashtable;

    new-instance v1, Lorg/bouncycastle/asn1/bvj;

    invoke-direct {v1, v4}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    const-string v15, "RSAWITHSHA1"

    invoke-virtual {v0, v15, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->Wsa:Ljava/util/Hashtable;

    new-instance v1, Lorg/bouncycastle/asn1/bvj;

    const-string v15, "1.2.840.10040.4.3"

    invoke-direct {v1, v15}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v14

    const-string v14, "SHA1WITHDSA"

    invoke-virtual {v0, v14, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->Wsa:Ljava/util/Hashtable;

    new-instance v1, Lorg/bouncycastle/asn1/bvj;

    invoke-direct {v1, v15}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    move-object/from16 v17, v13

    const-string v13, "DSAWITHSHA1"

    invoke-virtual {v0, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->Wsa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->ROa:Lorg/bouncycastle/asn1/bvj;

    const-string v13, "SHA224WITHDSA"

    invoke-virtual {v0, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->Wsa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->SOa:Lorg/bouncycastle/asn1/bvj;

    const-string v13, "SHA256WITHDSA"

    invoke-virtual {v0, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->Wsa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->TOa:Lorg/bouncycastle/asn1/bvj;

    const-string v13, "SHA384WITHDSA"

    invoke-virtual {v0, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->Wsa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->UOa:Lorg/bouncycastle/asn1/bvj;

    const-string v13, "SHA512WITHDSA"

    invoke-virtual {v0, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->Wsa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/ibl/ivd;->ecdsa_with_SHA1:Lorg/bouncycastle/asn1/bvj;

    const-string v13, "SHA1WITHECDSA"

    invoke-virtual {v0, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->Wsa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/ibl/ivd;->ecdsa_with_SHA224:Lorg/bouncycastle/asn1/bvj;

    const-string v13, "SHA224WITHECDSA"

    invoke-virtual {v0, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->Wsa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/ibl/ivd;->ecdsa_with_SHA256:Lorg/bouncycastle/asn1/bvj;

    const-string v13, "SHA256WITHECDSA"

    invoke-virtual {v0, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->Wsa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/ibl/ivd;->ecdsa_with_SHA384:Lorg/bouncycastle/asn1/bvj;

    const-string v13, "SHA384WITHECDSA"

    invoke-virtual {v0, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->Wsa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/ibl/ivd;->ecdsa_with_SHA512:Lorg/bouncycastle/asn1/bvj;

    const-string v13, "SHA512WITHECDSA"

    invoke-virtual {v0, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->Wsa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/ibl/ivd;->ecdsa_with_SHA1:Lorg/bouncycastle/asn1/bvj;

    const-string v13, "ECDSAWITHSHA1"

    invoke-virtual {v0, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->ira:Ljava/util/Hashtable;

    new-instance v1, Lorg/bouncycastle/asn1/bvj;

    invoke-direct {v1, v4}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->ira:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->sha224WithRSAEncryption:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->ira:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->sha256WithRSAEncryption:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->ira:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->sha384WithRSAEncryption:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v1, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->ira:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->sha512WithRSAEncryption:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v1, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->ira:Ljava/util/Hashtable;

    new-instance v1, Lorg/bouncycastle/asn1/bvj;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->ira:Ljava/util/Hashtable;

    new-instance v1, Lorg/bouncycastle/asn1/bvj;

    invoke-direct {v1, v15}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->ira:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/ibl/ivd;->ecdsa_with_SHA1:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "SHA1WITHECDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->ira:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/ibl/ivd;->ecdsa_with_SHA224:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "SHA224WITHECDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->ira:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/ibl/ivd;->ecdsa_with_SHA256:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "SHA256WITHECDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->ira:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/ibl/ivd;->ecdsa_with_SHA384:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "SHA384WITHECDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->ira:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/ibl/ivd;->ecdsa_with_SHA512:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "SHA512WITHECDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->ira:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/gck/zta;->iQa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->ira:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/gck/zta;->hQa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v1, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->ira:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->ROa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "SHA224WITHDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->ira:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->SOa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "SHA256WITHDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->Xsa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->rsaEncryption:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "RSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->Xsa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/ibl/ivd;->id_dsa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "DSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyou/zta/you/you;->Ysa:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/ibl/ivd;->ecdsa_with_SHA1:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lyou/zta/you/you;->Ysa:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/ibl/ivd;->ecdsa_with_SHA224:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lyou/zta/you/you;->Ysa:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/ibl/ivd;->ecdsa_with_SHA256:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lyou/zta/you/you;->Ysa:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/ibl/ivd;->ecdsa_with_SHA384:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lyou/zta/you/you;->Ysa:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/ibl/ivd;->ecdsa_with_SHA512:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lyou/zta/you/you;->Ysa:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/ibl/ivd;->id_dsa_with_sha1:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lyou/zta/you/you;->Ysa:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->ROa:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lyou/zta/you/you;->Ysa:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->SOa:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/bouncycastle/asn1/x509/zta;

    sget-object v1, Lorg/bouncycastle/asn1/gck/zta;->gQa:Lorg/bouncycastle/asn1/bvj;

    sget-object v2, Lorg/bouncycastle/asn1/z;->INSTANCE:Lorg/bouncycastle/asn1/z;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/zta;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    sget-object v1, Lyou/zta/you/you;->params:Ljava/util/Hashtable;

    const/16 v2, 0x14

    invoke-static {v0, v2}, Lyou/zta/you/you;->zta(Lorg/bouncycastle/asn1/x509/zta;I)Lorg/bouncycastle/asn1/dma/ear;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/bouncycastle/asn1/x509/zta;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->dOa:Lorg/bouncycastle/asn1/bvj;

    sget-object v2, Lorg/bouncycastle/asn1/z;->INSTANCE:Lorg/bouncycastle/asn1/z;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/zta;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    sget-object v1, Lyou/zta/you/you;->params:Ljava/util/Hashtable;

    const/16 v2, 0x1c

    invoke-static {v0, v2}, Lyou/zta/you/you;->zta(Lorg/bouncycastle/asn1/x509/zta;I)Lorg/bouncycastle/asn1/dma/ear;

    move-result-object v0

    invoke-virtual {v1, v11, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/bouncycastle/asn1/x509/zta;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->aOa:Lorg/bouncycastle/asn1/bvj;

    sget-object v2, Lorg/bouncycastle/asn1/z;->INSTANCE:Lorg/bouncycastle/asn1/z;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/zta;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    sget-object v1, Lyou/zta/you/you;->params:Ljava/util/Hashtable;

    const/16 v2, 0x20

    invoke-static {v0, v2}, Lyou/zta/you/you;->zta(Lorg/bouncycastle/asn1/x509/zta;I)Lorg/bouncycastle/asn1/dma/ear;

    move-result-object v0

    invoke-virtual {v1, v12, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/bouncycastle/asn1/x509/zta;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->bOa:Lorg/bouncycastle/asn1/bvj;

    sget-object v2, Lorg/bouncycastle/asn1/z;->INSTANCE:Lorg/bouncycastle/asn1/z;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/zta;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    sget-object v1, Lyou/zta/you/you;->params:Ljava/util/Hashtable;

    const/16 v2, 0x30

    invoke-static {v0, v2}, Lyou/zta/you/you;->zta(Lorg/bouncycastle/asn1/x509/zta;I)Lorg/bouncycastle/asn1/dma/ear;

    move-result-object v0

    move-object/from16 v2, v17

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/bouncycastle/asn1/x509/zta;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->cOa:Lorg/bouncycastle/asn1/bvj;

    sget-object v2, Lorg/bouncycastle/asn1/z;->INSTANCE:Lorg/bouncycastle/asn1/z;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/zta;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    sget-object v1, Lyou/zta/you/you;->params:Ljava/util/Hashtable;

    const/16 v2, 0x40

    invoke-static {v0, v2}, Lyou/zta/you/you;->zta(Lorg/bouncycastle/asn1/x509/zta;I)Lorg/bouncycastle/asn1/dma/ear;

    move-result-object v0

    move-object/from16 v2, v16

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;Lorg/bouncycastle/asn1/ear;Ljava/security/PrivateKey;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    invoke-static {p2}, Lyou/zta/you/you;->you(Ljavax/security/auth/x500/X500Principal;)Lorg/bouncycastle/asn1/x509/q;

    move-result-object v2

    const-string v6, "BC"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lyou/zta/you/you;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/q;Ljava/security/PublicKey;Lorg/bouncycastle/asn1/ear;Ljava/security/PrivateKey;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;Lorg/bouncycastle/asn1/ear;Ljava/security/PrivateKey;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    invoke-static {p2}, Lyou/zta/you/you;->you(Ljavax/security/auth/x500/X500Principal;)Lorg/bouncycastle/asn1/x509/q;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lyou/zta/you/you;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/q;Ljava/security/PublicKey;Lorg/bouncycastle/asn1/ear;Ljava/security/PrivateKey;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/q;Ljava/security/PublicKey;Lorg/bouncycastle/asn1/ear;Ljava/security/PrivateKey;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    const-string v6, "BC"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lyou/zta/you/you;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/q;Ljava/security/PublicKey;Lorg/bouncycastle/asn1/ear;Ljava/security/PrivateKey;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/q;Ljava/security/PublicKey;Lorg/bouncycastle/asn1/ear;Ljava/security/PrivateKey;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/dma/rtg;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lyou/zta/you/you;->Wsa:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/bvj;

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Lorg/bouncycastle/asn1/bvj;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown signature type requested"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    :goto_0
    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    sget-object v2, Lyou/zta/you/you;->Ysa:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/zta;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/zta;-><init>(Lorg/bouncycastle/asn1/bvj;)V

    :goto_1
    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/rtg;->Usa:Lorg/bouncycastle/asn1/x509/zta;

    goto :goto_2

    :cond_1
    sget-object v2, Lyou/zta/you/you;->params:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lorg/bouncycastle/asn1/x509/zta;

    sget-object v3, Lyou/zta/you/you;->params:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ssp;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/asn1/x509/zta;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    iput-object v2, p0, Lorg/bouncycastle/asn1/dma/rtg;->Usa:Lorg/bouncycastle/asn1/x509/zta;

    goto :goto_2

    :cond_2
    new-instance v0, Lorg/bouncycastle/asn1/x509/zta;

    sget-object v2, Lorg/bouncycastle/asn1/z;->INSTANCE:Lorg/bouncycastle/asn1/z;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/zta;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    goto :goto_1

    :goto_2
    :try_start_1
    invoke-interface {p3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p3

    invoke-static {p3}, Lorg/bouncycastle/asn1/vdb;->fromByteArray([B)Lorg/bouncycastle/asn1/vdb;

    move-result-object p3

    check-cast p3, Lorg/bouncycastle/asn1/obl;

    new-instance v0, Lorg/bouncycastle/asn1/dma/ssp;

    invoke-static {p3}, Lorg/bouncycastle/asn1/x509/c;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/c;

    move-result-object p3

    invoke-direct {v0, p2, p3, p4}, Lorg/bouncycastle/asn1/dma/ssp;-><init>(Lorg/bouncycastle/asn1/x509/q;Lorg/bouncycastle/asn1/x509/c;Lorg/bouncycastle/asn1/ear;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/rtg;->Tsa:Lorg/bouncycastle/asn1/dma/ssp;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    if-nez p6, :cond_3

    invoke-static {p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    goto :goto_3

    :cond_3
    invoke-static {p1, p6}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    :goto_3
    invoke-virtual {p1, p5}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    :try_start_2
    iget-object p2, p0, Lorg/bouncycastle/asn1/dma/rtg;->Tsa:Lorg/bouncycastle/asn1/dma/ssp;

    const-string p3, "DER"

    invoke-virtual {p2, p3}, Lorg/bouncycastle/asn1/oif;->getEncoded(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/security/Signature;->update([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    new-instance p2, Lorg/bouncycastle/asn1/n;

    invoke-virtual {p1}, Ljava/security/Signature;->sign()[B

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bouncycastle/asn1/n;-><init>([B)V

    iput-object p2, p0, Lorg/bouncycastle/asn1/dma/rtg;->Vsa:Lorg/bouncycastle/asn1/n;

    return-void

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "exception encoding TBS cert request - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "can\'t encode public key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "public key must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "subject must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/dma/rtg;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-static {p1}, Lyou/zta/you/you;->vju([B)Lorg/bouncycastle/asn1/obl;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/dma/rtg;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-void
.end method

.method private static gwm(Lorg/bouncycastle/asn1/bvj;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/dma/gwm;->md5:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "MD5"

    return-object p0

    :cond_0
    sget-object v0, Lorg/bouncycastle/asn1/gck/zta;->gQa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "SHA1"

    return-object p0

    :cond_1
    sget-object v0, Lorg/bouncycastle/asn1/bio/you;->dOa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "SHA224"

    return-object p0

    :cond_2
    sget-object v0, Lorg/bouncycastle/asn1/bio/you;->aOa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "SHA256"

    return-object p0

    :cond_3
    sget-object v0, Lorg/bouncycastle/asn1/bio/you;->bOa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "SHA384"

    return-object p0

    :cond_4
    sget-object v0, Lorg/bouncycastle/asn1/bio/you;->cOa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "SHA512"

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static vju([B)Lorg/bouncycastle/asn1/obl;
    .locals 1

    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/dma;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/dma;-><init>([B)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dma;->readObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/obl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "badly encoded request"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static you(Ljavax/security/auth/x500/X500Principal;)Lorg/bouncycastle/asn1/x509/q;
    .locals 1

    :try_start_0
    new-instance v0, Lyou/zta/you/tsu;

    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lyou/zta/you/tsu;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "can\'t convert name"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static zta(Lorg/bouncycastle/asn1/x509/zta;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/zta;->getParameters()Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lorg/bouncycastle/asn1/z;->INSTANCE:Lorg/bouncycastle/asn1/z;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/zta;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/dma/gwm;->id_RSASSA_PSS:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/asn1/dma/ear;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/ear;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/dma/ear;->xh()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/zta;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    move-result-object p0

    invoke-static {p0}, Lyou/zta/you/you;->gwm(Lorg/bouncycastle/asn1/bvj;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "withRSAandMGF1"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/zta;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static zta(Lorg/bouncycastle/asn1/x509/zta;I)Lorg/bouncycastle/asn1/dma/ear;
    .locals 5

    new-instance v0, Lorg/bouncycastle/asn1/dma/ear;

    new-instance v1, Lorg/bouncycastle/asn1/x509/zta;

    sget-object v2, Lorg/bouncycastle/asn1/dma/gwm;->id_mgf1:Lorg/bouncycastle/asn1/bvj;

    invoke-direct {v1, v2, p0}, Lorg/bouncycastle/asn1/x509/zta;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    new-instance v2, Lorg/bouncycastle/asn1/ywr;

    int-to-long v3, p1

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/ywr;-><init>(J)V

    new-instance p1, Lorg/bouncycastle/asn1/ywr;

    const-wide/16 v3, 0x1

    invoke-direct {p1, v3, v4}, Lorg/bouncycastle/asn1/ywr;-><init>(J)V

    invoke-direct {v0, p0, v1, v2, p1}, Lorg/bouncycastle/asn1/dma/ear;-><init>(Lorg/bouncycastle/asn1/x509/zta;Lorg/bouncycastle/asn1/x509/zta;Lorg/bouncycastle/asn1/ywr;Lorg/bouncycastle/asn1/ywr;)V

    return-object v0
.end method

.method private zta(Ljava/security/Signature;Lorg/bouncycastle/asn1/ssp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    if-eqz p2, :cond_0

    sget-object p0, Lorg/bouncycastle/asn1/z;->INSTANCE:Lorg/bouncycastle/asn1/z;

    invoke-virtual {p0, p2}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/security/Signature;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;

    move-result-object p0

    :try_start_0
    invoke-interface {p2}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p2

    const-string v0, "DER"

    invoke-virtual {p2, v0}, Lorg/bouncycastle/asn1/oif;->getEncoded(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p1}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MGF1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    :try_start_1
    const-class p2, Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {p0, p2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/SignatureException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception extracting parameters: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/security/SignatureException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IOException decoding parameters: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public Da(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const-string v0, "error decoding public key"

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/rtg;->Tsa:Lorg/bouncycastle/asn1/dma/ssp;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/dma/ssp;->oh()Lorg/bouncycastle/asn1/x509/c;

    move-result-object p0

    :try_start_0
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    new-instance v2, Lorg/bouncycastle/asn1/n;

    invoke-direct {v2, p0}, Lorg/bouncycastle/asn1/n;-><init>(Lorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/sis;->getOctets()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/c;->getAlgorithm()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/zta;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/zta;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_0
    move-exception v2

    :try_start_2
    sget-object v3, Lyou/zta/you/you;->Xsa:Ljava/util/Hashtable;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/zta;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v2, Lyou/zta/you/you;->Xsa:Ljava/util/Hashtable;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/zta;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p1, :cond_1

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0, p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0

    :cond_2
    throw v2
    :try_end_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    new-instance p0, Ljava/security/InvalidKeyException;

    invoke-direct {p0, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_2
    new-instance p0, Ljava/security/InvalidKeyException;

    invoke-direct {p0, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getEncoded()[B
    .locals 1

    :try_start_0
    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/oif;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const-string v0, "BC"

    invoke-virtual {p0, v0}, Lyou/zta/you/you;->Da(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method

.method public verify()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    const-string v0, "BC"

    invoke-virtual {p0, v0}, Lyou/zta/you/you;->verify(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public verify(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lyou/zta/you/you;->Da(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lyou/zta/you/you;->verify(Ljava/security/PublicKey;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    if-nez p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/dma/rtg;->Usa:Lorg/bouncycastle/asn1/x509/zta;

    invoke-static {v0}, Lyou/zta/you/you;->zta(Lorg/bouncycastle/asn1/x509/zta;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/dma/rtg;->Usa:Lorg/bouncycastle/asn1/x509/zta;

    invoke-static {v0}, Lyou/zta/you/you;->zta(Lorg/bouncycastle/asn1/x509/zta;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lyou/zta/you/you;->ira:Ljava/util/Hashtable;

    iget-object v2, p0, Lorg/bouncycastle/asn1/dma/rtg;->Usa:Lorg/bouncycastle/asn1/x509/zta;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/zta;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v0, Lyou/zta/you/you;->ira:Ljava/util/Hashtable;

    iget-object v1, p0, Lorg/bouncycastle/asn1/dma/rtg;->Usa:Lorg/bouncycastle/asn1/x509/zta;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/zta;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez p2, :cond_1

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/dma/rtg;->Usa:Lorg/bouncycastle/asn1/x509/zta;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/zta;->getParameters()Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lyou/zta/you/you;->zta(Ljava/security/Signature;Lorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {p2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    :try_start_1
    iget-object p1, p0, Lorg/bouncycastle/asn1/dma/rtg;->Tsa:Lorg/bouncycastle/asn1/dma/ssp;

    const-string v0, "DER"

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/oif;->getEncoded(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/security/Signature;->update([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/rtg;->Vsa:Lorg/bouncycastle/asn1/n;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/sis;->getOctets()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/security/Signature;->verify([B)Z

    move-result p0

    return p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/security/SignatureException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception encoding TBS cert request - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    throw v0
.end method
