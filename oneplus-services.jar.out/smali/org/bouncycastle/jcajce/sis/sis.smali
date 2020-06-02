.class public Lorg/bouncycastle/jcajce/sis/sis;
.super Ljavax/crypto/spec/PBEKeySpec;
.source ""


# static fields
.field private static final Dra:Lorg/bouncycastle/asn1/x509/zta;


# instance fields
.field private Cra:Lorg/bouncycastle/asn1/x509/zta;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/x509/zta;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->id_hmacWithSHA1:Lorg/bouncycastle/asn1/bvj;

    sget-object v2, Lorg/bouncycastle/asn1/z;->INSTANCE:Lorg/bouncycastle/asn1/z;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/zta;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    sput-object v0, Lorg/bouncycastle/jcajce/sis/sis;->Dra:Lorg/bouncycastle/asn1/x509/zta;

    return-void
.end method

.method public constructor <init>([C[BIILorg/bouncycastle/asn1/x509/zta;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    iput-object p5, p0, Lorg/bouncycastle/jcajce/sis/sis;->Cra:Lorg/bouncycastle/asn1/x509/zta;

    return-void
.end method


# virtual methods
.method public yg()Lorg/bouncycastle/asn1/x509/zta;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/sis/sis;->Cra:Lorg/bouncycastle/asn1/x509/zta;

    return-object p0
.end method

.method public zg()Z
    .locals 1

    sget-object v0, Lorg/bouncycastle/jcajce/sis/sis;->Dra:Lorg/bouncycastle/asn1/x509/zta;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/sis/sis;->Cra:Lorg/bouncycastle/asn1/x509/zta;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/oif;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
