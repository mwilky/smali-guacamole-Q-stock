.class public Lorg/bouncycastle/asn1/x509/wtn;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# static fields
.field public static final AA_COMPROMISE:I = 0xa

.field public static final AFFILIATION_CHANGED:I = 0x3

.field public static final CA_COMPROMISE:I = 0x2

.field public static final CERTIFICATE_HOLD:I = 0x6

.field public static final CESSATION_OF_OPERATION:I = 0x5

.field public static final KEY_COMPROMISE:I = 0x1

.field public static final PRIVILEGE_WITHDRAWN:I = 0x9

.field public static final REMOVE_FROM_CRL:I = 0x8

.field public static final SUPERSEDED:I = 0x4

.field public static final UNSPECIFIED:I = 0x0

.field public static final cua:I = 0x8

.field private static final dua:[Ljava/lang/String;

.field public static final esa:I = 0x1

.field public static final fsa:I = 0x2

.field public static final gsa:I = 0x3

.field public static final hsa:I = 0x4

.field public static final isa:I = 0x5

.field public static final jsa:I = 0x6

.field private static final kpa:Ljava/util/Hashtable;

.field public static final ksa:I = 0x9

.field public static final lsa:I = 0xa

.field public static final yoa:I


# instance fields
.field private value:Lorg/bouncycastle/asn1/bio;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "unspecified"

    const-string v1, "keyCompromise"

    const-string v2, "cACompromise"

    const-string v3, "affiliationChanged"

    const-string v4, "superseded"

    const-string v5, "cessationOfOperation"

    const-string v6, "certificateHold"

    const-string v7, "unknown"

    const-string v8, "removeFromCRL"

    const-string v9, "privilegeWithdrawn"

    const-string v10, "aACompromise"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x509/wtn;->dua:[Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x509/wtn;->kpa:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/bio;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/bio;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/wtn;->value:Lorg/bouncycastle/asn1/bio;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/wtn;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/wtn;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/wtn;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Lorg/bouncycastle/asn1/bio;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bio;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/bio;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/wtn;->rtg(I)Lorg/bouncycastle/asn1/x509/wtn;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static rtg(I)Lorg/bouncycastle/asn1/x509/wtn;
    .locals 3

    invoke-static {p0}, Lorg/bouncycastle/util/cno;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/x509/wtn;->kpa:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/bouncycastle/asn1/x509/wtn;->kpa:Ljava/util/Hashtable;

    new-instance v2, Lorg/bouncycastle/asn1/x509/wtn;

    invoke-direct {v2, p0}, Lorg/bouncycastle/asn1/x509/wtn;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lorg/bouncycastle/asn1/x509/wtn;->kpa:Ljava/util/Hashtable;

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/x509/wtn;

    return-object p0
.end method


# virtual methods
.method public getValue()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/wtn;->value:Lorg/bouncycastle/asn1/bio;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/bio;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/wtn;->value:Lorg/bouncycastle/asn1/bio;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/wtn;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    if-ltz p0, :cond_1

    const/16 v0, 0xa

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/bouncycastle/asn1/x509/wtn;->dua:[Ljava/lang/String;

    aget-object p0, v0, p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "invalid"

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CRLReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
