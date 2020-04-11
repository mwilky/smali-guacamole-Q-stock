.class public Lorg/bouncycastle/jcajce/sis/tsu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final TCa:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/sis/tsu;->TCa:[B

    return-void
.end method


# virtual methods
.method public Cj()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/sis/tsu;->TCa:[B

    invoke-static {p0}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p0

    return-object p0
.end method
