.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zta"
.end annotation


# static fields
.field private static Yoa:Ljava/util/Hashtable;


# instance fields
.field Moa:Ljava/security/SecureRandom;

.field Voa:Lorg/bouncycastle/crypto/ssp/bio;

.field Woa:Z

.field Xoa:Ljava/lang/Object;

.field algorithm:Ljava/lang/String;

.field configuration:Lorg/bouncycastle/jcajce/provider/config/sis;

.field param:Lorg/bouncycastle/crypto/wtn/gwm;

.field strength:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->Yoa:Ljava/util/Hashtable;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->Yoa:Ljava/util/Hashtable;

    const/16 v1, 0xc0

    invoke-static {v1}, Lorg/bouncycastle/util/cno;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "prime192v1"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->Yoa:Ljava/util/Hashtable;

    const/16 v1, 0xef

    invoke-static {v1}, Lorg/bouncycastle/util/cno;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "prime239v1"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->Yoa:Ljava/util/Hashtable;

    const/16 v1, 0x100

    invoke-static {v1}, Lorg/bouncycastle/util/cno;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "prime256v1"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->Yoa:Ljava/util/Hashtable;

    const/16 v1, 0xe0

    invoke-static {v1}, Lorg/bouncycastle/util/cno;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "P-224"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->Yoa:Ljava/util/Hashtable;

    const/16 v1, 0x180

    invoke-static {v1}, Lorg/bouncycastle/util/cno;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "P-384"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->Yoa:Ljava/util/Hashtable;

    const/16 v1, 0x209

    invoke-static {v1}, Lorg/bouncycastle/util/cno;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "P-521"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "EC"

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/bouncycastle/crypto/ssp/bio;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/ssp/bio;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->Voa:Lorg/bouncycastle/crypto/ssp/bio;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->Xoa:Ljava/lang/Object;

    const/16 v1, 0x100

    iput v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->strength:I

    invoke-static {}, Lorg/bouncycastle/crypto/igw;->fj()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->Moa:Ljava/security/SecureRandom;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->Woa:Z

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->algorithm:Ljava/lang/String;

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/sis;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->configuration:Lorg/bouncycastle/jcajce/provider/config/sis;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/sis;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/crypto/ssp/bio;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ssp/bio;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->Voa:Lorg/bouncycastle/crypto/ssp/bio;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->Xoa:Ljava/lang/Object;

    const/16 v0, 0x100

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->strength:I

    invoke-static {}, Lorg/bouncycastle/crypto/igw;->fj()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->Moa:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->Woa:Z

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->algorithm:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->configuration:Lorg/bouncycastle/jcajce/provider/config/sis;

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 9

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->Woa:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->strength:I

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->initialize(ILjava/security/SecureRandom;)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->Voa:Lorg/bouncycastle/crypto/ssp/bio;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/ssp/bio;->generateKeyPair()Lorg/bouncycastle/crypto/you;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/you;->getPublic()Lorg/bouncycastle/crypto/wtn/you;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/wtn/obl;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/you;->getPrivate()Lorg/bouncycastle/crypto/wtn/you;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/bouncycastle/crypto/wtn/zgw;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->Xoa:Ljava/lang/Object;

    instance-of v2, v0, Lyou/zta/you/you/rtg;

    if-eqz v2, :cond_1

    move-object v6, v0

    check-cast v6, Lyou/zta/you/you/rtg;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->algorithm:Ljava/lang/String;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->configuration:Lorg/bouncycastle/jcajce/provider/config/sis;

    invoke-direct {v0, v2, v1, v6, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/wtn/obl;Lyou/zta/you/you/rtg;Lorg/bouncycastle/jcajce/provider/config/sis;)V

    new-instance v1, Ljava/security/KeyPair;

    new-instance v8, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->algorithm:Ljava/lang/String;

    iget-object v7, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->configuration:Lorg/bouncycastle/jcajce/provider/config/sis;

    move-object v2, v8

    move-object v5, v0

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/wtn/zgw;Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;Lyou/zta/you/you/rtg;Lorg/bouncycastle/jcajce/provider/config/sis;)V

    invoke-direct {v1, v0, v8}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Ljava/security/KeyPair;

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->algorithm:Ljava/lang/String;

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->configuration:Lorg/bouncycastle/jcajce/provider/config/sis;

    invoke-direct {v2, v3, v1, v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/wtn/obl;Lorg/bouncycastle/jcajce/provider/config/sis;)V

    new-instance v1, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->algorithm:Ljava/lang/String;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->configuration:Lorg/bouncycastle/jcajce/provider/config/sis;

    invoke-direct {v1, v3, v4, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/wtn/zgw;Lorg/bouncycastle/jcajce/provider/config/sis;)V

    invoke-direct {v0, v2, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v0

    :cond_2
    move-object v6, v0

    check-cast v6, Ljava/security/spec/ECParameterSpec;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->algorithm:Ljava/lang/String;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->configuration:Lorg/bouncycastle/jcajce/provider/config/sis;

    invoke-direct {v0, v2, v1, v6, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/wtn/obl;Ljava/security/spec/ECParameterSpec;Lorg/bouncycastle/jcajce/provider/config/sis;)V

    new-instance v1, Ljava/security/KeyPair;

    new-instance v8, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->algorithm:Ljava/lang/String;

    iget-object v7, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->configuration:Lorg/bouncycastle/jcajce/provider/config/sis;

    move-object v2, v8

    move-object v5, v0

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/wtn/zgw;Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;Ljava/security/spec/ECParameterSpec;Lorg/bouncycastle/jcajce/provider/config/sis;)V

    invoke-direct {v1, v0, v8}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 1

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->strength:I

    if-eqz p2, :cond_0

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->Moa:Ljava/security/SecureRandom;

    :cond_0
    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->Yoa:Ljava/util/Hashtable;

    invoke-static {p1}, Lorg/bouncycastle/util/cno;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/spec/ECGenParameterSpec;

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "key size not configurable."

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "unknown key size."

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->Moa:Ljava/security/SecureRandom;

    :cond_0
    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->configuration:Lorg/bouncycastle/jcajce/provider/config/sis;

    invoke-interface {p1}, Lorg/bouncycastle/jcajce/provider/config/sis;->gwm()Lyou/zta/you/you/rtg;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->Xoa:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "null parameter passed but no implicitCA set"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    instance-of v0, p1, Lyou/zta/you/you/rtg;

    if-eqz v0, :cond_3

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->Xoa:Ljava/lang/Object;

    check-cast p1, Lyou/zta/you/you/rtg;

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->zta(Lyou/zta/you/you/rtg;Ljava/security/SecureRandom;)Lorg/bouncycastle/crypto/wtn/gwm;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->param:Lorg/bouncycastle/crypto/wtn/gwm;

    goto :goto_3

    :cond_3
    instance-of v0, p1, Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_4

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->Xoa:Ljava/lang/Object;

    check-cast p1, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->zta(Ljava/security/spec/ECParameterSpec;Ljava/security/SecureRandom;)Lorg/bouncycastle/crypto/wtn/gwm;

    move-result-object p1

    goto :goto_1

    :cond_4
    instance-of v0, p1, Ljava/security/spec/ECGenParameterSpec;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p1}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->zta(Ljava/lang/String;Ljava/security/SecureRandom;)V

    goto :goto_3

    :cond_5
    instance-of v0, p1, Lyou/zta/you/you/you;

    if-eqz v0, :cond_6

    check-cast p1, Lyou/zta/you/you/you;

    invoke-virtual {p1}, Lyou/zta/you/you/you;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :goto_3
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->Voa:Lorg/bouncycastle/crypto/ssp/bio;

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->param:Lorg/bouncycastle/crypto/wtn/gwm;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/crypto/ssp/bio;->zta(Lorg/bouncycastle/crypto/bvj;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->Woa:Z

    return-void

    :cond_6
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "parameter object not a ECParameterSpec"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected wa(Ljava/lang/String;)Lyou/zta/you/you/tsu;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/you;->Ja(Ljava/lang/String;)Lorg/bouncycastle/asn1/ibl/vju;

    move-result-object v0

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/bouncycastle/asn1/ibl/rtg;->gck(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ibl/vju;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->configuration:Lorg/bouncycastle/jcajce/provider/config/sis;

    invoke-interface {p0}, Lorg/bouncycastle/jcajce/provider/config/sis;->lqr()Ljava/util/Map;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ibl/vju;

    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown curve OID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown curve name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v7, 0x0

    new-instance p0, Lyou/zta/you/you/tsu;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/vju;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/vju;->getG()Lyou/zta/sis/zta/wtn;

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/vju;->Qi()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/vju;->Pi()Ljava/math/BigInteger;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lyou/zta/you/you/tsu;-><init>(Ljava/lang/String;Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object p0
.end method

.method protected zta(Ljava/security/spec/ECParameterSpec;Ljava/security/SecureRandom;)Lorg/bouncycastle/crypto/wtn/gwm;
    .locals 4

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Ljava/security/spec/EllipticCurve;)Lyou/zta/sis/zta/rtg;

    move-result-object p0

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Lyou/zta/sis/zta/rtg;Ljava/security/spec/ECPoint;Z)Lyou/zta/sis/zta/wtn;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    new-instance v2, Lorg/bouncycastle/crypto/wtn/ibl;

    invoke-direct {v2, p0, v0, v1, p1}, Lorg/bouncycastle/crypto/wtn/ibl;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance p0, Lorg/bouncycastle/crypto/wtn/gwm;

    invoke-direct {p0, v2, p2}, Lorg/bouncycastle/crypto/wtn/gwm;-><init>(Lorg/bouncycastle/crypto/wtn/ibl;Ljava/security/SecureRandom;)V

    return-object p0
.end method

.method protected zta(Lyou/zta/you/you/rtg;Ljava/security/SecureRandom;)Lorg/bouncycastle/crypto/wtn/gwm;
    .locals 4

    new-instance p0, Lorg/bouncycastle/crypto/wtn/gwm;

    new-instance v0, Lorg/bouncycastle/crypto/wtn/ibl;

    invoke-virtual {p1}, Lyou/zta/you/you/rtg;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v1

    invoke-virtual {p1}, Lyou/zta/you/you/rtg;->getG()Lyou/zta/sis/zta/wtn;

    move-result-object v2

    invoke-virtual {p1}, Lyou/zta/you/you/rtg;->Qi()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lyou/zta/you/you/rtg;->Pi()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/bouncycastle/crypto/wtn/ibl;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/crypto/wtn/gwm;-><init>(Lorg/bouncycastle/crypto/wtn/ibl;Ljava/security/SecureRandom;)V

    return-object p0
.end method

.method protected zta(Ljava/lang/String;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->wa(Ljava/lang/String;)Lyou/zta/you/you/tsu;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->Xoa:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->zta(Ljava/security/spec/ECParameterSpec;Ljava/security/SecureRandom;)Lorg/bouncycastle/crypto/wtn/gwm;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;->param:Lorg/bouncycastle/crypto/wtn/gwm;

    return-void
.end method
