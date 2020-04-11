.class public Lorg/bouncycastle/jcajce/PKCS12KeyWithParameters;
.super Lorg/bouncycastle/jcajce/PKCS12Key;
.source ""

# interfaces
.implements Ljavax/crypto/interfaces/PBEKey;


# instance fields
.field private final iterationCount:I

.field private final salt:[B


# direct methods
.method public constructor <init>([CZ[BI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jcajce/PKCS12Key;-><init>([CZ)V

    invoke-static {p3}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/PKCS12KeyWithParameters;->salt:[B

    iput p4, p0, Lorg/bouncycastle/jcajce/PKCS12KeyWithParameters;->iterationCount:I

    return-void
.end method

.method public constructor <init>([C[BI)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/PKCS12Key;-><init>([C)V

    invoke-static {p2}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/PKCS12KeyWithParameters;->salt:[B

    iput p3, p0, Lorg/bouncycastle/jcajce/PKCS12KeyWithParameters;->iterationCount:I

    return-void
.end method


# virtual methods
.method public getIterationCount()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/jcajce/PKCS12KeyWithParameters;->iterationCount:I

    return p0
.end method

.method public getSalt()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/PKCS12KeyWithParameters;->salt:[B

    return-object p0
.end method
